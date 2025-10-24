import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/screens/orders_graph.dart';
import 'package:admin_v2/features/dashboard/screens/revenue_graph.dart';
import 'package:admin_v2/features/dashboard/screens/widgets/app_bar_content.dart';
import 'package:admin_v2/features/dashboard/screens/widgets/drawer_screen.dart';
import 'package:admin_v2/features/dashboard/screens/widgets/store_card.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/extension/helper.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _preloadDashboardData();
  }

  void _initializeControllers() {
    _scrollController = ScrollController();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.2, 1.0, curve: Curves.easeOutCubic),
          ),
        );
    _animationController.forward();
  }

  void _preloadDashboardData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final dashboardCubit = context.read<DashboardCubit>();
      if (dashboardCubit.state.selectedStore != null) {
        _loadGraphData();
      }
    });
  }

  void _loadGraphData() {
    final dashboardCubit = context.read<DashboardCubit>();
    dashboardCubit.loadOrderGraph();
    dashboardCubit.loadRevenueGraph();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(position: _slideAnimation, child: _buildBody()),
      ),
    );
  }

  Widget _buildBody() {
    return MainPadding(
      child: BlocBuilder<DashboardCubit, DashboardState>(
        buildWhen: (previous, current) =>
            previous.selectedStore != current.selectedStore ||
            previous.selectDate != current.selectDate ||
            previous.apiFetchStatus != current.apiFetchStatus,
        builder: (context, state) {
          return RefreshIndicator(
            backgroundColor: Colors.white,
            color: Theme.of(context).primaryColor,
            onRefresh: _onRefresh,
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  _buildHeaderSection(state),
                  24.verticalSpace,
                  _buildDashboardGrid(state),
                  24.verticalSpace,
                  if (state.revenueReport?.isNotEmpty ?? false)
                    _buildGraphContainer(
                      title: 'Revenue Analytics',
                      icon: Icons.trending_up,
                      child: RevenueGraph(),
                    ),
                  24.verticalSpace,
                  if (state.ordersReport?.isNotEmpty ?? false)
                    _buildGraphContainer(
                      title: 'Orders Overview',
                      icon: Icons.shopping_bag_outlined,
                      child: OrdersGraph(),
                    ),
                  24.verticalSpace,
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeaderSection(DashboardState state) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard Overview',
            style: FontPalette.hW700S13.copyWith(
              fontSize: 18.sp,
              color: const Color(0xFF1A1A1A),
            ),
          ),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                flex: 3,
                child: StoreDropdown(
                  selectedStore: state.selectedStore,
                  storeList: state.storeList,
                  isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
                  onStoreChanged: _onStoreChanged,
                ),
              ),
              12.horizontalSpace,
              Expanded(
                flex: 2,
                child: DateDropdown(
                  selectedDate: state.selectDate,
                  onDateChanged: _onDateChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardGrid(DashboardState state) {
    if (state.apiFetchStatus == ApiFetchStatus.loading) {
      return _buildLoadingGrid();
    }

    return GridView.builder(
      shrinkWrap: true,
      itemCount: accountList.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.15,
      ),
      itemBuilder: (context, index) {
        return TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 400 + (index * 100)),
          tween: Tween(begin: 0.0, end: 1.0),
          curve: Curves.easeOutBack,
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: Opacity(
                opacity: value.clamp(0.0, 1.0),
                child: _DashboardGridItem(
                  data: accountList[index],
                  selectedStore: state.selectedStore,
                  selectedAccount: state.selectedAccount,
                  onTap: () {
                    navigateToFeature(
                      accountList[index].name ?? '',
                      context,
                      storeId: state.selectedStore?.storeId,
                      accountId: state.selectedAccount?.accountHeadId,
                    );
                    context.read<DashboardCubit>().initState();
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLoadingGrid() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.15,
      ),
      itemBuilder: (context, index) {
        return _buildShimmerCard();
      },
    );
  }

  Widget _buildShimmerCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          12.verticalSpace,
          Container(
            width: 100.w,
            height: 16.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGraphContainer({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    icon,
                    size: 20.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                12.horizontalSpace,
                Text(
                  title,
                  style: FontPalette.hW700S13.copyWith(
                    fontSize: 16.sp,
                    color: const Color(0xFF1A1A1A),
                  ),
                ),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }

  Future<void> _onRefresh() async {
    final dashboardCubit = context.read<DashboardCubit>();
    await Future.wait([
      dashboardCubit.loadOrderGraph(),
      dashboardCubit.loadRevenueGraph(),
    ]);
  }

  void _onStoreChanged(StoreResponse? store) {
    if (store == null) return;
    final dashboardCubit = context.read<DashboardCubit>();
    dashboardCubit.selectedStore(store);
    Future.delayed(const Duration(milliseconds: 300), _loadGraphData);
  }

  void _onDateChanged(ListOfDemo? date) {
    if (date == null) return;
    context.read<CommonCubit>().selectedDate(date);
    context.read<DashboardCubit>().monthSelection(date);
    Future.delayed(const Duration(milliseconds: 300), _loadGraphData);
  }
}

class _DashboardGridItem extends StatefulWidget {
  final AccountResponse data;
  final StoreResponse? selectedStore;
  final dynamic selectedAccount;
  final VoidCallback onTap;

  const _DashboardGridItem({
    required this.data,
    required this.selectedStore,
    required this.selectedAccount,
    required this.onTap,
  });

  @override
  State<_DashboardGridItem> createState() => _DashboardGridItemState();
}

class _DashboardGridItemState extends State<_DashboardGridItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() => _isPressed = true);
        _controller.forward();
      },
      onTapUp: (_) {
        setState(() => _isPressed = false);
        _controller.reverse();
        widget.onTap();
      },
      onTapCancel: () {
        setState(() => _isPressed = false);
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white.withOpacity(0.95)],
            ),
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: _isPressed
                    ? Colors.black.withOpacity(0.08)
                    : Colors.black.withOpacity(0.04),
                blurRadius: _isPressed ? 8 : 12,
                offset: Offset(0, _isPressed ? 2 : 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: -20,
                right: -20,
                child: Container(
                  width: 120.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor.withOpacity(0.03),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130.w,
                    height: 90.h,
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: SvgPicture.asset(
                      widget.data.image ?? '',
                      width: 80.w,
                      height: 60.h,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  12.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Text(
                      widget.data.name ?? '',
                      style: FontPalette.hW700S13.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF1A1A1A),
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
