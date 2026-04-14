import 'package:bloc/bloc.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(LoginLoading());
    var result = await authRepo.signInWithEmainAndPassword(email, password);
    result.fold(
      (failure) {
        emit(LoginFailure(errMessage: failure.errMessage));
      },
      (userEntity) {
        emit(LoginSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signInWithGoogle() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) {
        emit(LoginFailure(errMessage: failure.errMessage));
      },
      (userEntity) {
        emit(LoginSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) {
        emit(LoginFailure(errMessage: failure.errMessage));
      },
      (userEntity) {
        emit(LoginSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signInWithApple() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithApple();
    result.fold(
      (failure) {
        emit(LoginFailure(errMessage: failure.errMessage));
      },
      (userEntity) {
        emit(LoginSuccess(userEntity: userEntity));
      },
    );
  }
}
