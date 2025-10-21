import 'dart:convert' show base64Encode;
import 'dart:developer';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/company/company_response.dart';
import 'package:admin_v2/features/products/domain/models/create_product/create_product_response.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/main_category/main_category_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart'
    hide Image;
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/models/unit/unit_response.dart';
import 'package:admin_v2/features/products/domain/models/variant_response/variants_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/features/report/domain/models/productimage/product_image_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepositories _productRepositories;

  ProductCubit(this._productRepositories) : super(InitialProductState());

  Future<void> product({
    int? storeId,
    int? catId,
    int? unitId,
    String? search,
    String? barCode,
    int? filterId,
    bool isLoadMore = false,
    bool isPreservelist = false,
    int limit = 50,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isProduct: ApiFetchStatus.loading,
            productList: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }

      final currentPage = isLoadMore ? ((state.currentPage ?? 0) + limit) : 0;

      final res = await _productRepositories.products(
        storeId: storeId,
        catId: catId,

        search: search,
        barCode: barCode,
        filterId: state.selectProduct?.filterId,
        pageFirstResult: currentPage,
        resultPerPage: limit,
      );

      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        final sortList = List<ProductResponse>.from(res.data!);
        sortList.sort((a, b) => a.productName!.compareTo(b.productName!));
        List<ProductResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.productList ?? []), ...sortList];

          log(
            "Load More: Added ${res.data!.length} products, Total: ${updatedList.length}",
          );
        } else {
          updatedList = sortList;
          log("Fresh Load: Loaded ${updatedList.length} products");
        }
        // if (isLoadMore) {
        //   final existingIds = (state.productList ?? [])
        //       .map((p) => p.productId)
        //       .toSet();
        //   final newProducts = res.data!
        //       .where((product) => !existingIds.contains(product.productId))
        //       .toList();

        //   updatedList = [...(state.productList ?? []), ...newProducts];

        //   log(
        //     "Load More: Added ${newProducts.length} new products, Total: ${updatedList.length}",
        //   );
        // } else {
        //   updatedList = res.data!;
        //   log("Fresh Load: Loaded ${updatedList.length} products");
        // }

        final hasMoreData = res.data!.length >= limit;

        ProductResponse? scannedProduct;
        if (barCode != null && barCode.isNotEmpty) {
          try {
            scannedProduct = updatedList.firstWhere(
              (p) =>
                  (p.barCode?.trim().toLowerCase() ?? '') ==
                  barCode.trim().toLowerCase(),
            );
            log("Scanned product found: ${scannedProduct.productName}");
          } catch (e) {
            log("Scanned product not found for barcode: $barCode");
          }
        }

        emit(
          state.copyWith(
            productList: updatedList,
            isProduct: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
            filteredProducts: sortList,
            scannedProduct: scannedProduct,
            totalItems: updatedList.length,
          ),
        );

        log(
          "Products loaded successfully - Page: $currentPage, Total: ${updatedList.length}, HasMore: $hasMoreData",
        );
      } else {
        if (isLoadMore) {
          emit(state.copyWith(isLoadingMore: false, hasMoreData: false));
          log("Load More: No more data available");
        } else {
          emit(
            state.copyWith(
              isProduct: ApiFetchStatus.success,
              productList: [],
              isLoadingMore: false,
              hasMoreData: false,
              currentPage: 0,
              totalItems: 0,
            ),
          );
          log("Fresh Load: No products found");
        }
      }
    } catch (e, s) {
      log("Error loading products: $e", stackTrace: s);

      emit(
        state.copyWith(
          isProduct: isLoadMore ? state.isProduct : ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
  }

  // Future<void> loadMoreProducts() async {
  //   if (state.isLoadingMore ?? false || !(state.hasMoreData ?? false)) return;

  //   try {
  //     emit(state.copyWith(isLoadingMore: true));
  //     final nextPage = (state.currentPage ?? 0) + 1;
  //     final pageFirstResult = nextPage * _itemsPerPage;
  //     final res = await _productRepositories.products(
  //       storeId: state.lastStoreId,
  //       catId: state.lastCatId,
  //       search: state.lastSearchQuery,
  //       barCode: state.lastBarCode,
  //       filterId: state.lastFilterId,
  //       resultPerPage: pageFirstResult,
  //     );

  //     if (res.data != null && res.data!.isNotEmpty) {
  //       final newProducts = List<ProductResponse>.from(res.data!);
  //       final allProducts = List<ProductResponse>.from(state.productList ?? []);
  //       allProducts.addAll(newProducts);
  //       allProducts.sort((a, b) => a.productName!.compareTo(b.productName!));
  //       final hasMore = newProducts.length >= _itemsPerPage;
  //       emit(
  //         state.copyWith(
  //           isLoadingMore: false,
  //           productList: allProducts,
  //           filteredProducts: allProducts,
  //           currentPage: nextPage,
  //           hasMoreData: hasMore,
  //           totalItems: allProducts.length,
  //         ),
  //       );
  //     } else {
  //       emit(state.copyWith(isLoadingMore: false, hasMoreData: false));
  //     }
  //   } catch (e, s) {
  //     log("Error loading more products: $e", stackTrace: s);
  //     emit(state.copyWith(isLoadingMore: false));
  //   }
  // }

  void searchProducts(String query) {
    final allProducts = state.productList ?? [];

    if (query.isEmpty) {
      emit(state.copyWith(filteredProducts: allProducts));
    } else {
      final filtered = allProducts.where((product) {
        final productName = product.productName?.toLowerCase() ?? '';
        final productCode = product.productCode?.toLowerCase() ?? '';
        final barCode = product.barCode?.toLowerCase() ?? '';
        final queryLower = query.toLowerCase();
        return productName.contains(queryLower) ||
            productCode.contains(queryLower) ||
            barCode.contains(queryLower);
      }).toList();

      emit(state.copyWith(filteredProducts: filtered));
    }
  }

  bool _isNewSearch(
    int storeId,
    int catId,
    String search,
    String barCode,
    int filterId,
  ) {
    return state.lastStoreId != storeId ||
        state.lastCatId != catId ||
        state.lastSearchQuery != search ||
        state.lastBarCode != barCode ||
        state.lastFilterId != filterId;
  }

  Future<void> stockStatus() async {
    try {
      emit(state.copyWith(isProduct: ApiFetchStatus.loading));
      final res = await _productRepositories.stockStatus();

      if (res.data != null) {
        emit(
          state.copyWith(
            isProduct: ApiFetchStatus.success,
            stockStatusList: res.data,
          ),
        );
      }
      emit(state.copyWith(isProduct: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(isProduct: ApiFetchStatus.failed));
    }
  }

  Future<void> stockUpdate(StockUpdateRequest req) async {
    try {
      emit(state.copyWith(isProduct: ApiFetchStatus.loading));
      final res = await _productRepositories.stockUpdate(request: req);

      if (res.data != null) {
        emit(state.copyWith(isProduct: ApiFetchStatus.success));
      } else {
        emit(state.copyWith(isProduct: ApiFetchStatus.failed));
      }
    } catch (e) {
      emit(state.copyWith(isProduct: ApiFetchStatus.failed));
    }
  }

  Future<void> catgeory(int storeId) async {
    try {
      final res = await _productRepositories.category(storeId);
      if (res.data != null) {
        emit(state.copyWith(categoryList: res.data));
      }
    } catch (e, s) {
      log('$e,$s');
    }
  }

  Future<void> changeCategory(CategoryResponse cate) async {
    emit(state.copyWith(selectCategory: cate));
  }

  Future<void> unit() async {
    try {
      final res = await _productRepositories.unit();
      if (res.data != null) {
        emit(state.copyWith(unit: res.data));
      }
    } catch (e, s) {
      log('$e,$s');
    }
  }

  Future<void> changeUnit(UnitResponse unit) async {
    emit(state.copyWith(selectedUnit: unit));
  }

  Future<void> createProduct({required CreateProductResponse create}) async {
    emit(state.copyWith(isCreated: ApiFetchStatus.loading));
    final res = await _productRepositories.createProduct(create);

    if (res.data != null) {
      emit(state.copyWith(isCreated: ApiFetchStatus.success));
    } else {
      emit(state.copyWith(isCreated: ApiFetchStatus.failed));
    }
    emit(state.copyWith(isCreated: ApiFetchStatus.failed));



  }
    void  removeProductImage(int index) {
  final updatedImages = List<ProductImageListResponse>.from(state.productImage!);
  updatedImages.removeAt(index);
  emit(state.copyWith(productImage: updatedImages));
}


  Future<void> fetchCompanies() async {
    emit(state.copyWith(status: ApiFetchStatus.loading));

    try {
      final result = await _productRepositories.company();
       log('✅ CDN RESULT: ${result.data}');


      if (result.data != null && result.data!.isNotEmpty) {
        final firstCompany = result.data!.first;
        emit(state.copyWith(
          status: ApiFetchStatus.success,
          companies: result.data,
          cdnUrl: firstCompany.cdnUrl,
          errorMessage: null,
        ));
      } else {
        emit(state.copyWith(
 
          errorMessage: "No companies found",
        ));
      }
    } catch (e) {
      emit(state.copyWith(
 
        errorMessage: e.toString(),
      ));
    }
  }


  Future<void> uploadProductImage({
  required int userId,
  required int resourceType,
  required int companyId,
  required XFile imageFile,
  required int storeId,
}) async {
  try {
    emit(state.copyWith(isImageUploading: true));

    final result = await _productRepositories.uploadProductImage(
      file: imageFile,
      userId: userId,
      resourceType: resourceType,
      companyId: companyId,
      storeId: storeId,

    );

    if (result.data != null) {
      log('✅ Image uploaded successfully: ${result.data}');

      final updatedImages = List<ProductImageListResponse>.from(
        state.productImage ?? [],
      )..add(result.data!);

      emit(
        state.copyWith(
          productImage: updatedImages,
          isImageUploading: false,
        ),
      );
    } else {
      log('⚠️ Image upload failed: ${result.error}');
      emit(state.copyWith(isImageUploading: false));
    }
  } catch (e, s) {
    log('❌ Image upload error: $e', stackTrace: s);
    emit(state.copyWith(isImageUploading: false));
  }
}



  // Future<void> _companyRes(Emitter<ProductState> emit) async {
  //   try {
  //     final res = await _productRepositories.company();

  //     if (res.data != null && res.data!.isNotEmpty) {
  //       final companyList = res.data!;
  //       final currencyCode = companyList.first.currencyCode;




  //       emit(
  //         state.copyWith(
  //           companyRes: companyList,
  //           currencyCode: savedCodes,
  //           currencyTag: savedTag,
  //         ),
  //       );

  //       // log('Saved currency codes: $savedCodes');

  //       log('Notification registered successfully.');
  //     }
  //   } catch (e, s) {
  //     log('Error during notification: $e', stackTrace: s);
  //   }
  // }

  void togglePurchasable(bool value) {
    emit(state.copyWith(isPurchasable: value));
  }

  void toggleSellable(bool value) {
    emit(state.copyWith(isSellable: value));
  }

  Future<void> totalStockCalculation(
    double totalStock,
    double curentStock,
  ) async {
    if (state.selectedStockResponse?.productItemConditionId == 1) {
      final double updatedStock = curentStock + totalStock;
      emit(state.copyWith(totalStock: updatedStock));
    } else {
      final double updatedStock = curentStock - totalStock;
      emit(state.copyWith(totalStock: updatedStock));
    }
  }

  Future<void> selectStockType(StockStatusResponse selectedStock) async {
    emit(state.copyWith(selectedStockResponse: selectedStock));
  }

  Future<void> closeButton() async {
    emit(state.copyWith(totalStock: 0));
  }



  //  Future<void> _companyRes( Emitter<ProductState> emit) async {
  //   try {
  //     final res = await _productRepositories.company();

  //     if (res.data != null && res.data!.isNotEmpty) {
  //       final companyList = res.data!;
  //       final currencyCode = companyList.first.currencyCode;

  //       // Save to DB

  //       final savedCodes = await DBHelper.getCurrency();
  //       final savedTag = await DBHelper.getCurrencyCode();
  //       emit(
  //         state.copyWith(
  //           companyRes: companyList,
  //           currencyCode: savedCodes,
  //           currencyTag: savedTag,
  //         ),
  //       );

  //       log('Saved currency codes: $savedCodes');

  //       log('Notification registered successfully.');
  //     }
  //   } catch (e, s) {
  //     log('Error during notification: $e', stackTrace: s);
  //   }
  // }

  // Future<void> updateProduct(
  //   EditUpdateResponse updateProduct,
  //   int productId,
  //   int mainCategoryId,
  // ) async {
  //   emit(state.copyWith(isAdded: ApiFetchStatus.loading));

  //   final res = await _productRepositories.updateProduct(
  //     updateProduct,
  //     productId,
  //     mainCategoryId,
  //   );
  //   if (res.data != null) {
  //     emit(
  //       state.copyWith(
  //         isAdded: ApiFetchStatus.success,
  //         updateData: updateProduct,
  //       ),
  //     );
  //     return;
  //   }
  //   emit(state.copyWith(isAdded: ApiFetchStatus.failed));
  // }
  Future<void> updateProduct(
    EditUpdateResponse updatedProduct,
    int productId,
    int mainCategoryId,
  ) async {
    try {
      emit(state.copyWith(isAdded: ApiFetchStatus.loading));

      final res = await _productRepositories.updateProduct(
        updatedProduct,
        productId,
        mainCategoryId,
      );

      if (res.data != null) {
        emit(
          state.copyWith(
            isAdded: ApiFetchStatus.success,
            updateData: res.data, // Store updated product
          ),
        );
      } else {
        emit(state.copyWith(isAdded: ApiFetchStatus.failed));
      }
    } catch (e, s) {
      log("Error updating product: $e", stackTrace: s);
      emit(state.copyWith(isAdded: ApiFetchStatus.failed));
    }
  }

  Future<void> dateSelection(DateTime selectedDate) async {
    emit(state.copyWith(selectedDate: selectedDate));
  }

  Future<void> changeStore(StoreResponse res) async {
    emit(state.copyWith(selectedStore: res));
  }

  Future<void> clearEvent() async {
    emit(state.copyWith(selectCategory: CategoryResponse()));
  }

  Future<void> getVariants(int productId) async {
    try {
      final variantList = await _productRepositories.getVariant(productId);
      emit(state.copyWith(variantList: variantList.data));
    } catch (e, s) {
      log('getVariant error: $e\nStackTrace: $s');
    }
  }

  Future<void> clearCategory() async {
    emit(state.copyWith(selectCategory: CategoryResponse()));
  }

  Future<void> clearAllProducts() async {
    emit(
      state.copyWith(
        selectProduct: Product(filterId: 0, name: 'All products'),
        isMakeItNull: true,
      ),
    );
  }

  Future<void> selectProduct(Product? productOption) async {
    emit(state.copyWith(selectProduct: productOption));
  }

  Future<void> changeProductType(Product product) async {
    emit(state.copyWith(selectProduct: product));
  }
}
