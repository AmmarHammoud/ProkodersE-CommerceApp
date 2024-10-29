import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static final GetStorage _storage = GetStorage();

  static const _onboardingStatus = 'onboardingStatus';

  static saveOnboardingStatus({required bool onboardingStatus}) {
    _storage.write(_onboardingStatus, onboardingStatus);
  }

  static bool checkOnboardingStatus() {
    return _storage.read(_onboardingStatus) ?? false;
  }

  static const _token = 'token';

  static saveUserToken({required String token}) {
    _storage.write(_token, token);
  }

  static bool checkUserToken() {
    return _storage.read(_token) == null;
  }

  static remove(){
    _storage.remove(_onboardingStatus);
    _storage.remove(_token);
  }
}
