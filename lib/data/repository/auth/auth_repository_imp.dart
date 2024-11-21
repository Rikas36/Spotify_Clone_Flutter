import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/create_user_model.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';
import 'package:spotify_app/service_locator.dart';

class AuthRepositoryImp extends AuthRepository{
  @override
  Future<Either> signin(SigninUserRequest signinUserRequest) async {
    return await sl<AuthFirebaseService>().singnIn(signinUserRequest);
  }

  @override
  Future<Either> signup(CreateUserModel createUserModel) async{
    return await sl<AuthFirebaseService>().signUp(createUserModel);
  }
}