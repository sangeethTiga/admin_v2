part of 'report_cubit.dart';

class ReportState extends Equatable {
  final List<SalesReportResponse>? salesReport;
  final ApiFetchStatus? isSaleReport;
  final DateTime? fromDate;
  final DateTime? toDate;

  const ReportState({
    this.salesReport,
    this.isSaleReport,
    this.fromDate,
    this.toDate,
  });

  ReportState copyWith({
    List<SalesReportResponse>? salesReport,
    ApiFetchStatus? isSaleReport,
    DateTime? fromDate,
    DateTime? toDate,
  }) {
    return ReportState(
      salesReport: salesReport ?? this.salesReport,
      isSaleReport: isSaleReport ?? this.isSaleReport,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
    );
  }

  @override
  List<Object?> get props => [salesReport, isSaleReport, fromDate, toDate];
}

class InitialReportState extends ReportState {}
