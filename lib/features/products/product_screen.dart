import 'dart:async';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/widgets/edit_product.dart';
import 'package:admin_v2/features/products/widgets/scanner_dialog.dart';
import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/features/products/widgets/variant_stock_update.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/common_widgets/common_show_dialogue/common_show_dialogue.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollDirection;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  Timer? _debounceTimer;
  final ValueNotifier<bool> showEndMessage = ValueNotifier<bool>(false);
  bool _scrollListenerSetup = false;
  List<ProductResponse> _allProducts = []; // Store all products
  List<ProductResponse> _filteredProducts = [];
  @override
  void initState() {
    super.initState();
    _setupScrollListener();
    _setupSearchListener();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadInitialData();
    });
  }

  void _setupScrollListener() {
    if (_scrollListenerSetup) return;

    _scrollController.addListener(() {
      if (!_scrollController.hasClients) return;

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (showEndMessage.value) {
          showEndMessage.value = false;
        }
      }

      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _loadMoreData();
      }
    });

    _scrollListenerSetup = true;
  }

  void _setupSearchListener() {
    _searchController.addListener(() {
      _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 300), () {
        _performClientSideSearch(_searchController.text);
      });
    });
  }

  void _performClientSideSearch(String searchTerm) {
    final productState = context.read<ProductCubit>().state;
    _allProducts = productState.productList ?? [];

    if (searchTerm.trim().isEmpty) {
      _filteredProducts = _allProducts;
    } else {
      _filteredProducts = _allProducts.where((product) {
        final productName = product.productName?.toLowerCase() ?? '';
        final productCode = product.productCode?.toLowerCase() ?? '';
        final searchLower = searchTerm.toLowerCase();

        return productName.contains(searchLower) ||
            productCode.contains(searchLower);
      }).toList();
    }

    setState(() {});
  }

  void _loadInitialData() {
    final dashboardState = context.read<DashboardCubit>().state;
    if (dashboardState.selectedStore?.storeId != null) {
      context.read<ProductCubit>().product(
        storeId: dashboardState.selectedStore?.storeId,
        search: '',
        isLoadMore: false,
      );
    }
  }

  void _loadMoreData() {
    final productState = context.read<ProductCubit>().state;
    final dashboardState = context.read<DashboardCubit>().state;

    if (productState.hasMoreData == true &&
        productState.isLoadingMore != true &&
        productState.isProduct != ApiFetchStatus.loading &&
        dashboardState.selectedStore?.storeId != null) {
      context.read<ProductCubit>().product(
        storeId: dashboardState.selectedStore?.storeId,
        catId: productState.selectCategory?.details?.categoryId,
        search: _searchController.text.trim(),
        filterId: productState.selectProduct?.filterId,
        isLoadMore: true,
      );
    } else {
      if (productState.hasMoreData == false &&
          productState.isLoadingMore != true &&
          (productState.productList?.isNotEmpty ?? false)) {
        _showEndMessage();
      }
    }
  }

  void _showEndMessage() {
    if (!showEndMessage.value) {
      showEndMessage.value = true;

      Timer(Duration(seconds: 3), () {
        if (mounted) {
          showEndMessage.value = false;
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounceTimer?.cancel();
    showEndMessage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Products'),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Column(
            children: [
              dividerWidget(height: 6.h),
              MainPadding(
                top: 0.h,
                child: Column(
                  children: [
                    _buildStoreDropdown(),
                    _buildCategoryAndProductDropdowns(state),
                    _buildSearchField(context),
                    12.verticalSpace,
                    _buildProductsHeader(state),
                  ],
                ),
              ),
              Expanded(child: _buildProductsList(state, context)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStoreDropdown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return DropDownFieldWidget(
          isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 12.w),
            child: SvgPicture.asset(
              'assets/icons/package-box-pin-location.svg',
              width: 20.w,
              height: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          borderColor: kBlack,
          value: state.selectedStore,
          items:
              state.storeList?.map((e) {
                return DropdownMenuItem<StoreResponse>(
                  value: e,
                  child: Text(e.storeName ?? ''),
                );
              }).toList() ??
              [],
          fillColor: const Color(0XFFEFF1F1),
          onChanged: (store) => _handleStoreChange(store, context),
          labelText: '',
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        );
      },
    );
  }

  Widget _buildCategoryAndProductDropdowns(ProductState state) {
    return Row(
      children: [
        Expanded(child: _buildProductTypeDropdown(state)),
        const SizedBox(width: 8),
        Expanded(child: _buildCategoryDropdown(state)),
      ],
    );
  }

  Widget _buildProductTypeDropdown(ProductState state) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, common) {
        return DropDownFieldWidget(
          isLoading: false,
          borderColor: kBlack,
          hintText: 'All Products',
          value: state.selectProduct,
          items: products.map((Product value) {
            return DropdownMenuItem<Product>(
              value: value,
              child: Text(value.name ?? '', maxLines: 1),
            );
          }).toList(),
          fillColor: Colors.white,
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
          ),
          isDense: true,
          onChanged: (product) {
            _handleProductTypeChange(product, state, common, context);
          },
          suffixWidget: SizedBox(
            height: 12.h,
            width: 12.w,
            child: SvgPicture.asset(
              'assets/icons/down -arrow.svg',
              width: 9.33.w,
              height: 5.h,
              fit: BoxFit.contain,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }

  Widget _buildCategoryDropdown(ProductState state) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, common) {
        return DropDownFieldWidget(
          isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          hintStyle: FontPalette.hW500S14,
          hintText: 'Select category',
          borderColor: kBlack,
          value:
              state.categoryList?.any(
                    (e) =>
                        e.details?.categoryId ==
                        state.selectCategory?.details?.categoryId,
                  ) ==
                  true
              ? state.selectCategory?.details?.categoryId
              : null,
          items:
              state.categoryList?.map((e) {
                return DropdownMenuItem<int>(
                  value: e.details?.categoryId,
                  child: Text(e.details?.categoryName ?? ''),
                );
              }).toList() ??
              [],
          fillColor: Colors.white,
          suffixWidget: SizedBox(
            height: 12.h,
            width: 12.w,
            child: SvgPicture.asset(
              'assets/icons/down -arrow.svg',
              width: 9.33.w,
              height: 5.h,
              fit: BoxFit.contain,
              color: Colors.black,
            ),
          ),
          onChanged: (categoryId) =>
              _handleCategoryChange(categoryId, state, common, context),
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
          ),
        );
      },
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return TextFeildWidget(
      controller: _searchController,
      prefix: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SvgPicture.asset('assets/icons/Search.svg'),
      ),
      hintText: 'Search for products',
      hintStyle: FontPalette.hW500S14,
      borderColor: kBlack,
      hight: 48.h,
      fillColor: kWhite,
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
      ),
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_searchController.text.isNotEmpty)
            IconButton(
              onPressed: () {
                _searchController.clear();
                _performClientSideSearch('');
              },
              icon: Icon(Icons.clear, color: Colors.grey[600]),
            ),
          IconButton(
            onPressed: () => _handleQRScan(context),
            icon: SvgPicture.asset('assets/icons/Scaner.svg'),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsHeader(ProductState state) {
    final isSearchActive = _searchController.text.isNotEmpty;

    final products = isSearchActive
        ? _filteredProducts
        : (state.productList ?? []);

    if (products.isEmpty && state.isProduct != ApiFetchStatus.loading) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${products.length} Products',
                  style: FontPalette.hW600S14.copyWith(color: kPrimaryColor),
                ),
                if (isSearchActive)
                  Text(
                    'Filtered results for "${_searchController.text}"',
                    style: FontPalette.hW400S13.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
              ],
            ),
          ),
          if (state.hasMoreData == true)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                'More available',
                style: FontPalette.hW500S10.copyWith(color: kPrimaryColor),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProductsList(ProductState state, BuildContext context) {
    final isLoading = state.isProduct == ApiFetchStatus.loading;
    final products = _searchController.text.isNotEmpty
        ? _filteredProducts
        : (state.scannedProduct != null
              ? [state.scannedProduct!]
              : (state.productList ?? []));

    if (isLoading && products.isEmpty) {
      return _buildShimmerList();
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: products.length,
            itemBuilder: (context, index) => _ProductCard(
              key: ValueKey(products[index].productId),
              product: products[index],
            ),
          ),
        ),
        if (_searchController.text.isEmpty)
          PaginationFooter(state: state, showEndMessage: showEndMessage),
      ],
    );
  }

  Widget _buildPaginationFooter(ProductState state) {
    final isLoadingMore = state.isLoadingMore == true;
    final hasMoreData = state.hasMoreData == true;
    final products = state.productList ?? [];
    final currentPage = state.currentPage ?? 0;

    if (products.isEmpty) {
      return const SizedBox.shrink();
    }
    if (!hasMoreData && products.isNotEmpty && !isLoadingMore) {
      if (!showEndMessage.value) {
        showEndMessage.value = true;

        Timer(Duration(seconds: 3), () {
          if (mounted) {
            showEndMessage.value = false;
          }
        });
      }
    }
    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 20.h),
      child: Column(
        children: [
          if (isLoadingMore)
            Container(
              padding: EdgeInsets.all(16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                    ),
                  ),
                  12.horizontalSpace,
                  Text(
                    'Loading more products...',
                    style: FontPalette.hW500S14.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),

          ValueListenableBuilder<bool>(
            valueListenable: showEndMessage,
            builder: (context, show, child) {
              if (!show || hasMoreData || isLoadingMore || products.isEmpty) {
                return const SizedBox.shrink();
              }
              return Container(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    Container(
                      width: 40.w,
                      height: 2.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(1.r),
                      ),
                    ),
                    8.verticalSpace,
                    Text(
                      'No more products to load',
                      style: FontPalette.hW500S12.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                    if (currentPage > 0)
                      Text(
                        'Showing ${products.length} products',
                        style: FontPalette.hW400S10.copyWith(
                          color: Colors.grey[500],
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) => const _ShimmerProductCard(),
    );
  }

  void _handleStoreChange(StoreResponse? store, BuildContext context) {
    final productCubit = context.read<ProductCubit>();
    final dashboardCubit = context.read<DashboardCubit>();

    dashboardCubit.selectedStore(store ?? StoreResponse());
    productCubit.catgeory(store?.storeId ?? 0);
    productCubit.clearCategory();
    productCubit.clearAllProducts();
    productCubit.changeStore(store ?? StoreResponse());
    productCubit.product(storeId: store?.storeId);
    _searchController.clear();
  }

  void _handleProductTypeChange(
    Product? product,
    ProductState state,
    DashboardState common,
    BuildContext context,
  ) {
    final productCubit = context.read<ProductCubit>();
    productCubit.changeProductType(product ?? Product());
    productCubit.selectProduct(product);
    productCubit.product(
      storeId: common.selectedStore?.storeId ?? 0,
      catId: state.selectedProduct?.mainCategoryId ?? 0,
      search: _searchController.text,
      barCode: '',
      filterId: state.selectProduct?.filterId ?? 0,
    );
    productCubit.clearCategory();
  }

  void _handleCategoryChange(
    int? categoryId,
    ProductState state,
    DashboardState common,
    BuildContext context,
  ) {
    final selectedCategory = state.categoryList?.firstWhere(
      (e) => e.details?.categoryId == categoryId,
    );

    final productCubit = context.read<ProductCubit>();
    productCubit.changeCategory(selectedCategory!);
    productCubit.product(
      storeId: common.selectedStore?.storeId ?? 0,
      catId: selectedCategory.details?.categoryId ?? 0,
      search: _searchController.text,
      barCode: '',
      filterId: state.selectProduct?.filterId ?? 0,
    );
  }

  Future<void> _handleQRScan(BuildContext context) async {
    final scannedCode = await showDialog<String>(
      context: context,
      builder: (_) => const ScannerDialog(),
    );

    if (scannedCode != null) {
      _searchController.text = scannedCode;
      final storeId =
          context.read<DashboardCubit>().state.selectedStore?.storeId ?? 0;
      context.read<ProductCubit>().product(
        storeId: storeId,
        barCode: scannedCode,
      );
    }
  }
}

class _ProductCard extends StatelessWidget {
  final dynamic product;

  const _ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0XFFF4F5F5)),
      ),
      child: Row(
        children: [
          Container(
            height: 140.h,
            width: 90.w,
            color: const Color(0xffF9FCFB),
            child: Center(child: _buildProductImage()),
          ),
          10.horizontalSpace,
          Expanded(child: _buildProductDetails(context)),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: CachedNetworkImage(
        imageUrl: (product.images?.isEmpty ?? true)
            ? ''
            : product.images?[0].medium ?? '',
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: Colors.grey[200],
          child: const Icon(Icons.image, color: Colors.grey),
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.grey[200],
          child: const Icon(Icons.photo, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildProductDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        8.verticalSpace,
        _buildProductHeader(context),
        4.verticalSpace,
        _buildProductInfo(),
        4.verticalSpace,
        _buildProductCode(),
        4.verticalSpace,
        _buildStockUpdateButton(context),
        12.verticalSpace,
      ],
    );
  }

  Widget _buildProductHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            product.productName ?? '',
            style: FontPalette.hW700S13,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        _buildEditButton(context),
      ],
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _showEditModal(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/Edit.svg'),
          3.horizontalSpace,
          Text(
            'Edit',
            style: FontPalette.hW700S14.copyWith(color: kPrimaryColor),
          ),
          6.horizontalSpace,
        ],
      ),
    );
  }

  Widget _buildProductInfo() {
    return Row(
      children: [
        Text(
          'Price : ${product.productPrice ?? ''}',
          style: FontPalette.hW500S13,
        ),
        10.horizontalSpace,
        Text('QTY : ${product.productQty ?? ''}', style: FontPalette.hW500S13),
      ],
    );
  }

  Widget _buildProductCode() {
    return Text(
      'Prod Code : ${product.productCode ?? ''}',
      style: FontPalette.hW500S13,
    );
  }

  Widget _buildStockUpdateButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _showStockUpdateModal(context),
      child: Container(
        alignment: Alignment.center,
        height: 32.h,
        width: 108.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: kPrimaryColor),
        ),
        child: Text(
          'Stock Update',
          style: FontPalette.hW700S13.copyWith(color: kPrimaryColor),
        ),
      ),
    );
  }

  Future<void> _showEditModal(BuildContext context) async {
    await showModalBottomSheet<EditUpdateResponse>(
      context: context,
      isScrollControlled: true,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      builder: (context) => EditProduct(product: product),
    );
  }

  void _showStockUpdateModal(BuildContext context) {
    context.read<ProductCubit>().closeButton();

    if (product.isVariant == 1 && product.maintainStock == 1) {
      context.read<ProductCubit>().getVariants(product.productId!);
      commonnShowBottomSheet(
        context: context,
        child: VariantStockUpdateCard(maintainStock: product.maintainStock!),
      );
    } else {
      commonnShowBottomSheet(
        context: context,
        child: StockUpdateCard(
          currentStock: product.productQty,
          productId: product.productId,
          maintainStock: product.maintainStock,
          fromVariant: false,
        ),
      );
    }
  }
}

class _ShimmerProductCard extends StatelessWidget {
  const _ShimmerProductCard();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h, left: 10.w),
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: const Color(0XFFF4F5F5)),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              height: 55.h,
              width: 55.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 16.h,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    6.verticalSpace,
                    Container(height: 12.h, width: 150.w, color: Colors.white),
                    4.verticalSpace,
                    Container(height: 12.h, width: 100.w, color: Colors.white),
                    4.verticalSpace,
                    Container(height: 32.h, width: 108.w, color: Colors.white),
                  ],
                ),
              ),
            ),
            16.horizontalSpace,
          ],
        ),
      ),
    );
  }
}

class PaginationFooter extends StatelessWidget {
  final ProductState state;
  final ValueNotifier<bool> showEndMessage;

  const PaginationFooter({
    super.key,
    required this.state,
    required this.showEndMessage,
  });

  @override
  Widget build(BuildContext context) {
    final isLoadingMore = state.isLoadingMore == true;
    final hasMoreData = state.hasMoreData == true;
    final products = state.productList ?? [];
    final currentPage = state.currentPage ?? 0;

    if (products.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 20.h),
      child: Column(
        children: [
          if (isLoadingMore)
            Container(
              padding: EdgeInsets.all(16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                    ),
                  ),
                  12.horizontalSpace,
                  Text(
                    'Loading more products...',
                    style: FontPalette.hW500S14.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),

          if (!hasMoreData && products.isNotEmpty && !isLoadingMore)
            EndMessageWidget(
              showEndMessage: showEndMessage,
              currentPage: currentPage,
              productsLength: products.length,
            ),
        ],
      ),
    );
  }
}

class EndMessageWidget extends StatelessWidget {
  final ValueNotifier<bool> showEndMessage;
  final int currentPage;
  final int productsLength;

  const EndMessageWidget({
    super.key,
    required this.showEndMessage,
    required this.currentPage,
    required this.productsLength,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showEndMessage,
      builder: (context, show, child) {
        if (!show) {
          return const SizedBox.shrink();
        }

        return Container(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              Container(
                width: 40.w,
                height: 2.h,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(1.r),
                ),
              ),
              8.verticalSpace,
              Text(
                'No more products to load',
                style: FontPalette.hW500S12.copyWith(color: Colors.grey[600]),
              ),
              if (currentPage > 0)
                Text(
                  'Showing $productsLength products',
                  style: FontPalette.hW400S10.copyWith(color: Colors.grey[500]),
                ),
            ],
          ),
        );
      },
    );
  }
}
