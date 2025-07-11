import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OrdersGraph extends StatelessWidget {
  const OrdersGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
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
                  Text('Orders', style: FontPalette.hW500S16),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(
                        labelPlacement: LabelPlacement.betweenTicks,
                        labelRotation: 0,
                        labelIntersectAction: AxisLabelIntersectAction.none,
                        majorGridLines: MajorGridLines(width: 0),
                      ),
                      primaryYAxis: NumericAxis(
                        majorGridLines: MajorGridLines(width: 0),
                      ),

                      // title: ChartTitle(text: 'Order'),
                      legend: Legend(
                        isVisible: false,
                        position: LegendPosition.top,
                      ),
                      tooltipBehavior: TooltipBehavior(enable: true),

                      series: <CartesianSeries>[
                        ColumnSeries<OrdersGraphResponse, String>(
                          color: Colors.amberAccent,
                          name: 'Order',

                          dataSource: state.ordersReport,
                          xValueMapper: (data, _) =>
                              data.monthname != null &&
                                  data.monthname!.length >= 3
                              ? data.monthname!.substring(0, 3)
                              : data.monthname ?? '',

                          yValueMapper: (data, _) => data.ordercount,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
