

import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OrdersGraph extends StatelessWidget {
  const OrdersGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Center(
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return SizedBox(
              height: 500,
              width: 650,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  labelPlacement: LabelPlacement.betweenTicks,
                  labelRotation: 45,
                  
                ),

                title: ChartTitle(text: 'Order'),
                legend: Legend(isVisible: false, position: LegendPosition.top),
                tooltipBehavior: TooltipBehavior(enable: true),

                series: <CartesianSeries>[
                  ColumnSeries<OrdersGraphResponse, String>(
                    color: Colors.amberAccent,
                    name: 'Order',

                    dataSource: state.ordersReport,
                    xValueMapper: (data, _) =>
                        data.monthname != null && data.monthname!.length >= 3
                        ? data.monthname!.substring(0, 3)
                        : data.monthname ?? '',

                    yValueMapper: (data, _) => data.ordercount,
                  ),
                ],
              ),
            );
          },
        ),
   
    );
  }
}
