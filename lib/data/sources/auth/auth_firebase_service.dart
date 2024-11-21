import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_model.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserModel createUserModel);

  Future<Either> singnIn(SigninUserRequest signinUserRequest);
}

class AuthFirebaseServiceImp extends AuthFirebaseService {
  @override
  Future<Either> signUp(CreateUserModel createUserModel) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserModel.email,
        password: createUserModel.password,
      );
      return Right('Sign Up was Successfull');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The Password Provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists';
      }
      return Left(message);
    }
  }

  @override
  Future<Either> singnIn(SigninUserRequest signinUserRequest) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signinUserRequest.email,
        password: signinUserRequest.password,
      );

      return const Right('Sign In was successfull');
    } on FirebaseAuthException catch(e) {
      String message = '';
      
      if(e.code == 'invalid-email') {
        message = 'Not user found for that email';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong password provided for that user';
      }


      return Left(message);
    }
  }
}
