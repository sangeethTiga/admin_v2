import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductOffer extends StatelessWidget {
  const ProductOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Offers'),
      body: SingleChildScrollView(
        child: MainPadding(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<DashboardCubit, DashboardState>(
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

                    onChanged: (p0) {
                      context.read<ReportCubit>().loadOffers(
                        storeId: state.selectedStore?.storeId,
                      );
                      context.read<DashboardCubit>().selectedStore(p0);
                    },
                    labelText: '',
                  );
                },
              ),
              BlocBuilder<ReportCubit, ReportState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 900,
                    child: CommonTableWidget(
                      isLoading: state.isOffersReport == ApiFetchStatus.loading,
                      headers: ["#", "IMAGE", "OFFER", "OFFER ARABIC NAME"],
                      columnFlex: [2, 2, 2, 2],
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
                              "OFFER ARABIC NAME": e.offerTypeArabicName ?? '',
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
      ),
    );
  }
}
