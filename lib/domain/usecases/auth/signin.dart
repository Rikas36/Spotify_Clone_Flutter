import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecase/usecase.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';
import 'package:spotify_app/service_locator.dart';

class SigninUseCase implements Usecase<Either,SigninUserRequest> {
  @override
  Future<Either> call({SigninUserRequest ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}