import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueGraph extends StatelessWidget {
  const RevenueGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Revenue & Expense', style: FontPalette.hW700S16),
                SizedBox(height: 12),
                SizedBox(
                  height: 280,

                  width: double.infinity,
                  child: SfCartesianChart(
                    // title: ChartTitle(text: 'Revenue & Expense'),
                    legend: Legend(
                      isVisible: true,
                      position: LegendPosition.top,
                      iconHeight: 12,
                      iconWidth: 12,
                    ),
                    primaryXAxis: CategoryAxis(
                      labelPlacement: LabelPlacement.betweenTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                      interval: 2,
                      labelIntersectAction: AxisLabelIntersectAction.rotate45,
                      majorGridLines: MajorGridLines(width: 0),
                    ),
                    primaryYAxis: NumericAxis(
                      majorGridLines: MajorGridLines(width: 0),
                      //interval: 20,
                    ),

                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <CartesianSeries>[
                      ColumnSeries<RevenueResponse, String>(
                        name: 'Revenue',
                        dataSource: state.revenueReport,
                        xValueMapper: (rev, _) =>
                            rev.monthname?.substring(0, 3) ?? '',
                        yValueMapper: (rev, _) => rev.income?.toDouble() ?? 0,
                        color: Colors.cyan,
                        width: 0.9,
                      ),
                      ColumnSeries<RevenueResponse, String>(
                        name: 'Expense',
                        dataSource: state.revenueReport,
                        xValueMapper: (rev, _) =>
                            rev.monthname?.substring(0, 3) ?? '',
                        yValueMapper: (rev, _) => rev.expense?.toDouble() ?? 0,
                        color: Colors.pinkAccent,
                        width: 0.9,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
