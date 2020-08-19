part of 'tabcubit_cubit.dart';

class TabcubitState extends Equatable {
  final bool loading;
  final ResponseServer data;
  final String error;

  TabcubitState({
    this.loading,
    this.data,
    this.error,
  });

  @override
  List<Object> get props => [loading, data, error];

  TabcubitState copyWith({
    bool loading,
    ResponseServer data,
    String error,
  }) {
    return TabcubitState(
      loading: loading ?? this.loading,
      data: data,
      error: error,
    );
  }
}
