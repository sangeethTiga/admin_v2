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
    return Scaffold(appBar: AppbarWidget(title: 'Orders'),
    body:  BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            title: ChartTitle(text: ''),
            legend: Legend(isVisible: false),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <LineSeries<OrdersGraphResponse, String>>[
              LineSeries<OrdersGraphResponse, String>(
              //  dataSource: state.revenueReport,
                xValueMapper: (OrdersGraphResponse data, _) => data.monthname,
                yValueMapper: (OrdersGraphResponse data, _) => data.ordercount,
                name: 'Revenue',
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              ),
            ],
          );
        },
      ),
    
    
    
    
    
    );
  }
}
