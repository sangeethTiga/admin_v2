import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueGraph extends StatelessWidget {
  const RevenueGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return SizedBox(
          height: 400,
          width: double.infinity,
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

              interval: 1,
              labelIntersectAction: AxisLabelIntersectAction.rotate45,
              majorGridLines: MajorGridLines(width: 1),
            ),
            primaryYAxis: NumericAxis(majorGridLines: MajorGridLines(width: 1)),
            tooltipBehavior: TooltipBehavior(enable: true),

            series: <CartesianSeries>[
              ColumnSeries<RevenueResponse, String>(
                name: 'Revenue',
                dataSource: state.revenueReport,
                xValueMapper: (rev, _) => rev.monthname?.substring(0, 3) ?? '',
                yValueMapper: (rev, _) => rev.income?.toDouble() ?? 0,
                color: Colors.cyan,
              ),
              ColumnSeries<RevenueResponse, String>(
                name: 'Expense',
                dataSource: state.revenueReport,
                xValueMapper: (rev, _) => rev.monthname?.substring(0, 3) ?? '',
                yValueMapper: (rev, _) => rev.expense?.toDouble() ?? 0,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}
