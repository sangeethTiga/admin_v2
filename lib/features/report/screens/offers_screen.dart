import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductOffer extends StatelessWidget {
  const ProductOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Offers'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dividerWidget(height: 6.h),
            MainPadding(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  commonStoreDropDown(
                    onChanged: (p0) {
                      context.read<DashboardCubit>().selectedStore(p0);
                      context.read<ReportCubit>().loadOffers(
                        storeId: p0?.storeId,
                      );
                    },
                  ),

                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 900,
                        child: CommonTableWidget(
                          isLoading:
                              state.isOffersReport == ApiFetchStatus.loading,
                          headers: ["#", "IMAGE", "OFFER", "OFFER ARABIC NAME"],
                          columnFlex: [1, 1, 2, 2],
                          data:
                              state.offerReport?.map((e) {
                                int index = state.offerReport?.indexOf(e) ?? 0;
                                return {
                                  "#": index + 1,
                                  "IMAGE": CachedNetworkImage(
                                    imageUrl: e.offerTypeImg ?? '',
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.photo),
                                  ),
                                  "OFFER": e.offerTypeName ?? '',
                                  "OFFER ARABIC NAME":
                                      e.offerTypeArabicName ?? '',
                                };
                              }).toList() ??
                              [],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
