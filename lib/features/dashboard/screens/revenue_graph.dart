import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueGraph extends StatelessWidget {
  const RevenueGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Revenue & Expense'),
      body: Center(
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return SizedBox(
              height: 500,
              width: 450,
              child: SfCartesianChart(
                title: ChartTitle(text: 'Revenue & Expense'),

                legend: Legend(
                  isVisible: true,
                  position: LegendPosition.top,
                  iconHeight: 12,
                  iconWidth: 12,
                ),
                primaryXAxis: CategoryAxis(
                  labelPlacement: LabelPlacement.betweenTicks,
                  labelRotation: 45,
                  interval: 1,
                  isVisible: true,
                  labelIntersectAction: AxisLabelIntersectAction.rotate45,

                  majorGridLines: MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(minimum: 0, interval: 50000),
                series: <CartesianSeries>[
                  ColumnSeries<RevenueResponse, String>(
                    name: 'Revenue',
                    dataSource: state.revenueReport,
                    xValueMapper: (rev, _) => rev.monthname ?? '',
                    yValueMapper: (rev, _) => rev.income?.toDouble() ?? 0,
                    color: Colors.cyan,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                  ),
                  ColumnSeries<RevenueResponse, String>(
                    name: 'Expense',
                    dataSource: state.revenueReport,
                    xValueMapper: (rev, _) => rev.monthname ?? '',
                    yValueMapper: (rev, _) => rev.expense?.toDouble() ?? 0,
                    color: Colors.pinkAccent,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
