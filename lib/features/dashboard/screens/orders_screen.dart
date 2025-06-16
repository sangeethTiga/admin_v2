import 'dart:math';

import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OrdersGraph extends StatelessWidget {
  const OrdersGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Orders'),
      body: Center(
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return SizedBox(
              height: 400,
              width: 400,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  labelPlacement: LabelPlacement.onTicks,
                  labelRotation: 45,
                ),

                title: ChartTitle(text: 'Orders'),
                legend: Legend(isVisible: false, position: LegendPosition.top),
                tooltipBehavior: TooltipBehavior(enable: true),

                series: <CartesianSeries>[
                  
                  ColumnSeries<OrdersGraphResponse, String>(
                    name: 'Orders',

                    dataSource: state.ordersReport,
                    xValueMapper: (data, _) => data.monthname ?? '',

                    yValueMapper: (data, _) => data.ordercount,
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
