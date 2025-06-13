
import 'package:admin_v2/features/report/cubit/report_cubit.dart';

import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Topstores extends StatelessWidget {
  const Topstores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Top Performing Stores'),
      body: MainPadding(
        child: BlocBuilder<ReportCubit, ReportState>(
          builder: (context, state) {
            return CommonTableWidget(
              headers: ["#", "STORES", "SALES"],
              columnFlex: [2, 2, 2],
              data:
                  state.topStores?.map((e) {
                    int index = state.topStores?.indexOf(e) ?? 0;
                    return {
                      "#": index + 1,
                      "STORES": e.storeName ?? '',
                      "SALES": e.totalorders ?? '',
                    };
                  }).toList() ??
                  [],
            );
          },
        ),
      ),
    );
  }
}
