abstract class SignInScreenStates {}

class SignInInitialState extends SignInScreenStates {}

class SignInLoadingState extends SignInScreenStates {}

class SignInSuccessState extends SignInScreenStates {}

class SignInErrorState extends SignInScreenStates {
  String error;

  SignInErrorState(this.error);
}
