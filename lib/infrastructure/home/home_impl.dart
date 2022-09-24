import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:finekube/core/contants/strings.dart';
import 'package:finekube/domain/core/failures/main_failure.dart';
import 'package:finekube/domain/home/home_resp/home_resp.dart';
import 'package:finekube/domain/home/home_service.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeService)
class HomeImplementation implements HomeService {
  @override
  Future<Either<MainFailure, List<HomeResp>>> getHomeData() async {
    try {
      final response = await Dio(BaseOptions()).get(kurl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['data'] as List).map((e) {
          return HomeResp.fromJson(e);
        }).toList();

        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
