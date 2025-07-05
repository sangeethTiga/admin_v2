part of 'product_cubit.dart';

class ProductState extends Equatable {
  final ApiFetchStatus? isProduct;
  final List<ProductResponse>? productList;
  final ProductResponse? selectedProduct;
  final List<StockStatusResponse>? stockStatusList;
  final List<CategoryResponse>? categoryList;
  final List<VariantsResponse>? variantList;
  final CategoryResponse? selectCategory;
  final ProductResponse? scannedProduct;
  final List<ProductResponse>? filteredProducts;
  final double? totalStock;
  final StockStatusResponse? selectedStockResponse;
  final ApiFetchStatus? apiFetchStatus;
  final DateTime? selectedDate;
  final EditUpdateResponse? updateData;
  final ApiFetchStatus? isAdded;
  final StoreResponse? selectedStore;
  final String? name;
  final String? quantity;
  final String? price;
  final List<Product>? prodList;
  final List<ProductModel>? allProducts;
  final List<ProductModel>? filteredProduct;
  final Product? selectProduct;
  final List<MostSellingResponse>? sellingProductsReport;
  final ApiFetchStatus? isMostSelling;
  final MostSellingResponse? selectedProducts;

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
    this.selectedDate,
    this.updateData,
    this.variantList,
    this.isAdded,
    this.selectedStore,
    this.name,
    this.price,
    this.quantity,
    this.prodList,
    this.selectProduct,
    this.filteredProduct,
    this.allProducts,
     this.isMostSelling,
    this.sellingProductsReport,
    this.selectedProducts,
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
    double? totalStock,
    StockStatusResponse? selectedStockResponse,
    ApiFetchStatus? apiFetchStatus,
    DateTime? selectedDate,
    List<VariantsResponse>? variantList,
    EditUpdateResponse? updateData,
    ApiFetchStatus? isAdded,
    StoreResponse? selectedStore,
    String? name,
    String? quantity,
    String? price,
    List<Product>? prodList,
    Product? selectProduct,
    List<ProductModel>? filteredProduct,
    List<ProductModel>? allProducts,
      List<MostSellingResponse>? sellingProductsReport,
    ApiFetchStatus? isMostSelling,
    MostSellingResponse? selectedProducts,
  }) => ProductState(
    isProduct: isProduct ?? this.isProduct,
    productList: productList ?? this.productList,
    stockStatusList: stockStatusList ?? this.stockStatusList,
    categoryList: categoryList ?? this.categoryList,
    selectCategory: selectCategory ?? this.selectCategory,
    selectedProduct: selectedProduct ?? this.selectedProduct,
    scannedProduct: scannedProduct ?? this.scannedProduct,
    filteredProducts: filteredProducts ?? this.filteredProducts,
    apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    totalStock: totalStock ?? this.totalStock,
    selectedStockResponse: selectedStockResponse ?? this.selectedStockResponse,
    selectedDate: selectedDate ?? this.selectedDate,
    variantList: variantList ?? this.variantList,
    isAdded: isAdded ?? this.isAdded,
    selectedStore: selectedStore ?? this.selectedStore,
    updateData: updateData ?? this.updateData,
    name: name ?? this.name,
    price: price ?? this.price,
    quantity: quantity ?? this.quantity,
    prodList: prodList ?? this.prodList,
    selectProduct: selectProduct ?? this.selectProduct,
    filteredProduct: filteredProduct ?? this.filteredProduct,
    allProducts: allProducts ?? this.allProducts,
     sellingProductsReport: sellingProductsReport ?? this.sellingProductsReport,
    isMostSelling: isMostSelling ?? this.isMostSelling,
    selectedProducts: selectedProducts ?? this.selectedProducts,
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
    selectedStockResponse,
    selectedDate,
    variantList,
    isAdded,
    selectedStore,
    updateData,
    name,
    price,
    quantity,
    prodList,
    selectProduct,
    filteredProduct,
    allProducts,
     sellingProductsReport,
    isMostSelling,
    selectedProducts,
  ];
}

class InitialProductState extends ProductState {}
