import 'package:bloc/bloc.dart';
import 'package:finekube/domain/core/failures/main_failure.dart';

import 'package:finekube/domain/home/home_resp/home_resp.dart';
import 'package:finekube/domain/home/home_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<LoadDataInHome>((event, emit) async {
      //send loading to ui
      emit(const HomeState(isLoading: true, hasError: false, dataList: []));
      final result = await _homeService.getHomeData();

      //data to state

      final newState = result.fold(
        (MainFailure failure) {
          return const HomeState(
              isLoading: false, hasError: true, dataList: []);
        },
        (List<HomeResp> resp) {
          return HomeState(
            isLoading: false,
            hasError: false,
            dataList: resp,
          );
        },
      );
      emit(newState);
    });
  }
}
