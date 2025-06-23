import 'dart:developer';

import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepositories _productRepositories;
  ProductCubit(this._productRepositories) : super(InitialProductState());

  Future<void> priduct(
    int storeId,
    int catId,
    String search,
    String barCode,
  ) async {
    try {
      emit(state.copyWith(isProduct: ApiFetchStatus.loading));

      final res = await _productRepositories.products(
        storeId: storeId,
        catId: catId,
        search: search,
        barCode: barCode,
      );
      if (res.data != null) {
        final product = res.data!;
        final scanned = barCode.isNotEmpty
            ? product.firstWhereOrNull(
                (p) => (p.barCode?.trim() ?? '') == barCode.trim(),
              )
            : null;
        log('first-=-=-=-=--${scanned?.productName ?? 'no match'}');
        // ProductResponse? scanned;
        // if (barCode.isNotEmpty) {
        //   try {
        //     scanned = product.firstWhere((p) => p.barCode == barCode);
        //   } catch (e) {
        //     scanned = null;
        //   }
        // }

        emit(
          state.copyWith(
            isProduct: ApiFetchStatus.success,
            productList: res.data,
            filteredProducts: res.data,
            scannedProduct: scanned,
          ),
        );
        print("Scanned Result Count: ${res.data?.length}");
      }
      return;
    } catch (e) {
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
        emit(
          state.copyWith(
            isProduct: ApiFetchStatus.success,
            productList: res.data,
          ),
        );
      }
      emit(state.copyWith(isProduct: ApiFetchStatus.failed));
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
    } catch (e) {}
  }

  Future<void> changeCategory(CategoryResponse cate) async {
    emit(state.copyWith(selectCategory: cate));
  }
}
