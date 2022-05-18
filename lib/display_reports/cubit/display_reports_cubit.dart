import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_reports_state.dart';
part 'display_reports_cubit.freezed.dart';

class DisplayReportsCubit extends Cubit<DisplayReportsState> {
  DisplayReportsCubit() : super(DisplayReportsState.initial());
}
