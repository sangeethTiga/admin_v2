import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/models/variant_response/variants_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepositories _productRepositories;
  ProductCubit(this._productRepositories) : super(InitialProductState());

  Future<void> product(
    int storeId,
    int catId,
    String search,
    String barCode,
    int filterId,
  ) async {
    try {
      emit(state.copyWith(isProduct: ApiFetchStatus.loading));

      final res = await _productRepositories.products(
        storeId: storeId,
        catId: catId,
        search: search,
        barCode: barCode,
        filterId: state.selectProduct?.filterId,
      );
      if (res.data != null) {
        final sortList = List<ProductResponse>.from(res.data!);
        sortList.sort((a, b) => a.productName!.compareTo(b.productName!));
        final product = res.data!;
        final scanned = barCode.isNotEmpty
            ? product.firstWhereOrNull(
                (p) => (p.barCode?.trim() ?? '') == barCode.trim(),
              )
            : null;

        emit(
          state.copyWith(
            isProduct: ApiFetchStatus.success,
            productList: res.data,
            filteredProducts: sortList,
            //selectProduct:
            scannedProduct: scanned,
          ),
        );
      }
      return;
    } catch (e, s) {
      log("$e", stackTrace: s);
      emit(state.copyWith(isProduct: ApiFetchStatus.failed));
    }
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

  Future<void> totalStockCalculation(
    double totalStock,
    double curentStock,
  ) async {
    if (state.selectedStockResponse?.productItemConditionId == 1) {
      final double updatedStock = curentStock + totalStock;
      emit(state.copyWith(totalStock: updatedStock));
      print("updatedStock -=-=$updatedStock");
    } else {
      final double updatedStock = curentStock - totalStock;
      emit(state.copyWith(totalStock: updatedStock));
      print("updatedStock -=-=$updatedStock");
    }
  }

  Future<void> selectStockType(StockStatusResponse selectedStock) async {
    emit(state.copyWith(selectedStockResponse: selectedStock));
  }

  Future<void> closeButton() async {
    emit(state.copyWith(totalStock: 0));
  }

  Future<void> updateProduct(
    EditUpdateResponse updateProduct,
    int productId,
    int mainCategoryId,
  ) async {
    emit(state.copyWith(isAdded: ApiFetchStatus.loading));

    final res = await _productRepositories.updateProduct(
      updateProduct,
      productId,
      mainCategoryId,
    );
    if (res.data != null) {
      final updatedProduct = res.data!;
      emit(
        state.copyWith(
          isAdded: ApiFetchStatus.success,
          updateData: updateProduct,
        ),
      );
      return;
    }
    emit(state.copyWith(isAdded: ApiFetchStatus.failed));
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

  Future<void> selectProduct(Product? productOption) async {
    print("Selected product: ${productOption?.name}");
    emit(state.copyWith(selectProduct: productOption));
  }

  Future<void> changeProducType(Product product) async {
    emit(state.copyWith(selectProduct: product));
  }
}
