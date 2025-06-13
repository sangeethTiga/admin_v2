import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueGraph extends StatelessWidget {
  const RevenueGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(title: 'Revenue & Expense'),
  body: Container(
    child: SfCartesianChart(),
  ),
    );
  }
}