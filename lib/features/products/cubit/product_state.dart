part of 'product_cubit.dart';

class ProductState extends Equatable {
  final ApiFetchStatus? isProduct;
  final List<ProductResponse>? productList;
  final ProductResponse? selectedProduct;
  final List<StockStatusResponse>? stockStatusList;
  final List<CategoryResponse>? categoryList;
  final CategoryResponse? selectCategory;
  final ProductResponse? scannedProduct;
  final List<ProductResponse>? filteredProducts;
  final double ? totalStock;
  final StockStatusResponse ? selectedStockResponse;
  final ApiFetchStatus? apiFetchStatus;

  const ProductState({
    this.isProduct,
    this.productList,
    this.stockStatusList,
    this.categoryList,
    this.selectCategory,
    this.selectedProduct,
    this.scannedProduct,
    this.filteredProducts,
    this.apiFetchStatus,
    this.totalStock,
    this.selectedStockResponse,
  });

  ProductState copyWith({
    ApiFetchStatus? isProduct,
    List<ProductResponse>? productList,
    List<StockStatusResponse>? stockStatusList,
    List<CategoryResponse>? categoryList,
    CategoryResponse? selectCategory,
    ProductResponse? selectedProduct,
    ProductResponse? scannedProduct,
    List<ProductResponse>? filteredProducts,
    double ? totalStock,
    StockStatusResponse? selectedStockResponse,
    ApiFetchStatus? apiFetchStatus
  }) => ProductState(
    isProduct: isProduct ?? this.isProduct,
    productList: productList ?? this.productList,
    stockStatusList: stockStatusList ?? this.stockStatusList,
    categoryList: categoryList ?? this.categoryList,
    selectCategory: selectCategory ?? this.selectCategory,
    selectedProduct: selectedProduct ?? this.selectedProduct,
    scannedProduct: scannedProduct ?? this.scannedProduct,
    filteredProducts: filteredProducts ?? this.filteredProducts,
    apiFetchStatus: apiFetchStatus ??this.apiFetchStatus,
    totalStock: totalStock??this.totalStock,
    selectedStockResponse: selectedStockResponse??this.selectedStockResponse,
  );

  @override
  List<Object?> get props => [
    isProduct,
    productList,
    stockStatusList,
    categoryList,
    selectCategory,
    selectedProduct,
    scannedProduct,
    filteredProducts,
    apiFetchStatus,
    totalStock,
    selectedStockResponse
  ];
}

class InitialProductState extends ProductState {}
