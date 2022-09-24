part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool hasError,
    required List<HomeResp> dataList,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        hasError: false,
        dataList: [],
      );
}
