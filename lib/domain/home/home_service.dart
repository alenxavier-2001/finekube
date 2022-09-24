import 'package:dartz/dartz.dart';

import 'package:finekube/domain/core/failures/main_failure.dart';
import 'package:finekube/domain/home/home_resp/home_resp.dart';

abstract class HomeService {
  Future<Either<MainFailure, List<HomeResp>>> getHomeData();
}
