// import 'package:admin_v2/features/graphs/domain/models/revenue_graph_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(InitialDashBoardState());
}
