part of 'product_cubit.dart';

class ProductState extends Equatable {
  final ApiFetchStatus? isProduct;
  final List<ProductResponse>? productList;
  final List<StockStatusResponse>? stockStatusList;

  const ProductState({this.isProduct, this.productList, this.stockStatusList});

  ProductState copyWith({
    ApiFetchStatus? isProduct,
    List<ProductResponse>? productList,
    List<StockStatusResponse>? stockStatusList,
  }) => ProductState(
    isProduct: isProduct ?? this.isProduct,
    productList: productList ?? this.productList,
    stockStatusList: stockStatusList ?? this.stockStatusList,
  );

  @override
  List<Object?> get props => [isProduct, productList, stockStatusList];
}

class InitialProductState extends ProductState {}
