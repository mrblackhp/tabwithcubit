import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tab_with_cubit_example/repository.dart';
import 'package:tab_with_cubit_example/response.dart';

part 'tabcubit_state.dart';

class TabcubitCubit extends Cubit<TabcubitState> {
  final Repository _repository = Repository();
  static TabcubitState initialState = TabcubitState();
  TabcubitCubit() : super(initialState);

   void getFunction( String startDate, String endDate) async {
    emit(TabcubitState(loading: true));

    try {
      final ResponseServer data = await _repository.getFunction(startDate, endDate);
      print('info: $data');

      emit(TabcubitState(loading: false, data: data, error: null));
    } catch (e) {
      emit(TabcubitState(loading: false, error: e.toString()));
    }
  }

  void takeFunction( String startDate, String endDate) async {
    emit(TabcubitState(loading: true));

    try {
      final ResponseServer data = await _repository.getFunction(startDate, endDate);
      print('info: $data');

      emit(TabcubitState(loading: false, data: data, error: null));
    } catch (e) {
      emit(TabcubitState(loading: false, error: e.toString()));
    }
  }
}
