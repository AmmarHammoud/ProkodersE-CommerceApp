import 'package:get_storage/get_storage.dart';

import '../../models/product_model.dart';

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

  static remove() {
    _storage.remove(_onboardingStatus);
    _storage.remove(_token);
  }

  static const _favourite = 'favourite';

  static getFavouriteProducts() {
    return _storage.read(_favourite) ?? [];
  }

  static saveProductToFavourite({required ProductModel product}) {
    var currentFav = getFavouriteProducts();
    product.isFav = true;
    currentFav.add(product);
    _storage.write(_favourite, currentFav);
  }

  static const _cart = 'cart';

  static getProductInCart() {
    return _storage.read(_cart) ?? [];
  }

  static addProductToCart({required ProductModel product}) {
    var currentCartProducts = getProductInCart();
    product.isInCart = true;
    currentCartProducts.add(product);
    _storage.write(_cart, currentCartProducts);
  }
}
