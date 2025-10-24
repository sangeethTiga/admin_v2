part of 'product_cubit.dart';

class ProductState extends Equatable {
  final ApiFetchStatus? isProduct;
  final List<ProductResponse>? productList;
  final ProductResponse? selectedProduct;
  final List<StockStatusResponse>? stockStatusList;
  final List<CategoryResponse>? categoryList;
  final List<MainCategoryResponse>? mainCategory;
  final MainCategoryResponse? selectMainCategory;
  final List<UnitResponse>? unit;
  final UnitResponse? selectedUnit;
  final bool isPurchasable;
  final bool isSellable;
  final ApiFetchStatus? isCreated;

  final bool? isImageUploading;
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
  final Product? selectProduct;
  final ProductResponse? updatedProduct;
  final List<MostSellingResponse>? sellingProductsReport;
  final ApiFetchStatus? isMostSelling;
  final MostSellingResponse? selectedProducts;
  final bool? isLoadingMore;
  final bool? hasMoreData;
  final int? currentPage;
  final int? totalItems;
  final String? lastSearchQuery;
  final String? lastBarCode;
  final int? lastStoreId;
  final int? lastCatId;
  final int? lastFilterId;
  final List <ProductImageListResponse>? productImage;

      final List<CompanyResponse>? companies;
  final String? cdnUrl;
  final String? errorMessage;
    final ApiFetchStatus? status;
      final String? resourceMediumPath;
  final String? originalFilename;
  final List<Image>? images;

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
    this.updatedProduct,
this.images,
    this.isImageUploading,


    this.isMostSelling,
    this.sellingProductsReport,
    this.selectedProducts,
    this.isLoadingMore = false,
    this.hasMoreData = true,
    this.currentPage = 20,
    this.totalItems = 0,
    this.lastSearchQuery = '',
    this.lastBarCode = '',
    this.lastStoreId = 0,
    this.lastCatId = 0,
    this.lastFilterId = 0,
    this.mainCategory,
    this.selectMainCategory,
    this.unit,
    this.selectedUnit,
    this.isPurchasable = false,
    this.isSellable = false,
    this.isCreated,
    this.productImage,
        this.companies,
    this.cdnUrl,
    this.errorMessage,
    this.status,
    this.originalFilename,
    this.resourceMediumPath,

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
    ProductResponse? updatedProduct,

    List<MostSellingResponse>? sellingProductsReport,
    ApiFetchStatus? isMostSelling,
    MostSellingResponse? selectedProducts,
    bool?isImageUploading,

    bool? isLoadingMore,
    bool? hasMoreData,
    int? currentPage,
    int? totalItems,
    String? lastSearchQuery,
    String? lastBarCode,
    int? lastStoreId,
    int? lastCatId,
    int? lastFilterId,
    bool? isMakeItNull = false,
    List<MainCategoryResponse>? mainCategory,
    MainCategoryResponse? selectMainCategory,
    List<UnitResponse>? unit,
    UnitResponse? selectedUnit,
    List<ProductImageListResponse>?productImage,

    bool? isPurchasable,
    bool? isSellable,
    ApiFetchStatus? isCreated,
    List<CompanyResponse>?companyRes,
        List<CompanyResponse>? companies,
    String? cdnUrl,
    String? errorMessage,
    String?originalFilename,
    String?resourceMediumPath,
    List<Image>?images
    
  //  ApiFetchStatus? status,
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
    selectProduct: isMakeItNull == true
        ? Product()
        : selectProduct ?? this.selectProduct,
    updatedProduct: updatedProduct ?? this.updatedProduct,
    sellingProductsReport: sellingProductsReport ?? this.sellingProductsReport,
    isMostSelling: isMostSelling ?? this.isMostSelling,
    selectedProducts: selectedProducts ?? this.selectedProducts,
    isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    hasMoreData: hasMoreData ?? this.hasMoreData,
    currentPage: currentPage ?? this.currentPage,
    totalItems: totalItems ?? this.totalItems,
    lastSearchQuery: lastSearchQuery ?? this.lastSearchQuery,
    lastBarCode: lastBarCode ?? this.lastBarCode,
    lastStoreId: lastStoreId ?? this.lastStoreId,
    lastCatId: lastCatId ?? this.lastCatId,
    lastFilterId: lastFilterId ?? this.lastFilterId,
    mainCategory: mainCategory ?? this.mainCategory,
    selectMainCategory: selectMainCategory ?? this.selectMainCategory,
    isPurchasable: isPurchasable ?? this.isPurchasable,
    isSellable: isSellable ?? this.isSellable,
    unit: unit ?? this.unit,
    selectedUnit: selectedUnit ?? this.selectedUnit,
    isCreated: isCreated ?? this.isCreated,

    isImageUploading: isImageUploading ?? this.isImageUploading,
    productImage: productImage ?? this.productImage,
          companies: companies ?? this.companies,
      cdnUrl: cdnUrl ?? this.cdnUrl,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      originalFilename: originalFilename ?? this.originalFilename,
      resourceMediumPath: resourceMediumPath ?? this.resourceMediumPath,
      images: images ?? this.images


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
    updatedProduct,
    sellingProductsReport,
    isMostSelling,
    selectedProducts,
    isLoadingMore,
    hasMoreData,
    currentPage,
    totalItems,
    lastSearchQuery,
    lastBarCode,
    lastStoreId,
    mainCategory,
    selectMainCategory,
    isPurchasable,
    isSellable,
    unit,
    selectedUnit,
    isCreated,

    productImage,
    companies,
    cdnUrl,
    errorMessage,
    status,
    resourceMediumPath,
    images,

  ];
}

class InitialProductState extends ProductState {}
