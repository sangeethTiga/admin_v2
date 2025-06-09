import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepositories _productRepositories;
  ProductCubit(this._productRepositories) : super(InitialProductState());

  Future<void> priduct(int storeId) async {
    try {
      emit(state.copyWith(isProduct: ApiFetchStatus.loading));

      final res = await _productRepositories.products(storeId: storeId);
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
}
