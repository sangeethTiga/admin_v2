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
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
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
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: FadeTransition(opacity: _fadeAnimation, child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return MainPadding(
      top: 10.h,
      child: BlocBuilder<DashboardCubit, DashboardState>(
        buildWhen: (previous, current) =>
            previous.selectedStore != current.selectedStore ||
            previous.selectDate != current.selectDate ||
            previous.apiFetchStatus != current.apiFetchStatus,
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: _onRefresh,
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        //flex: 3,
                        child: StoreDropdown(
                          selectedStore: state.selectedStore,
                          storeList: state.storeList,
                          isLoading:
                              state.apiFetchStatus == ApiFetchStatus.loading,
                          onStoreChanged: _onStoreChanged,
                        ),
                      ),
                      36.horizontalSpace,
                      SizedBox(
                        width: 120.w,
                        child: DateDropdown(
                          selectedDate: state.selectDate,
                          onDateChanged: (v) {
                            _onDateChanged(v);
                          },
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  _buildDashboardGrid(state),
                  20.verticalSpace,
                  if (state.revenueReport?.isNotEmpty ?? false)
                    SizedBox(width: double.infinity, child: RevenueGraph()),
                  20.verticalSpace,
                  if (state.ordersReport?.isNotEmpty ?? false) OrdersGraph(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDashboardGrid(DashboardState state) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: accountList.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: 1.23,
      ),
      itemBuilder: (context, index) {
        return _DashboardGridItem(
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
        );
      },
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

class _DashboardGridItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0XFFEFF1F1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(data.image ?? '', width: 90.w, height: 66.h),
              8.verticalSpace,
              Text(
                data.name ?? '',
                style: FontPalette.hW700S13,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
