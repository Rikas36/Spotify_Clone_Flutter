import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/create_user_model.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';

abstract class AuthRepository {

  Future<Either> signin(SigninUserRequest signinUserRequest);
  Future<Either> signup(CreateUserModel createUserModel);
}