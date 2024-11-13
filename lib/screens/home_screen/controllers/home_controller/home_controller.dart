import 'dart:developer';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/models/category_model.dart';
import 'package:prokoders_e_commerce/models/product_model.dart';
import 'package:prokoders_e_commerce/shared/components/get_storage_helper.dart';
import 'home_screen_states.dart';

class HomeController extends GetxController {
  late Rx<HomeScreenStates> state;
  late RxList<ProductModel> products;
  late RxList<CategoryModel> categories;

  @override
  void onInit() {
    state = HomeScreenStates().obs;
    products = <ProductModel>[].obs;
    categories = <CategoryModel>[].obs;
    super.onInit();
  }

  @override
  void onReady() {
    _fillCategoriesWithStaticData();
    _fillProductsWithStaticData();
    super.onReady();
  }

  void addProductToFavourite({required ProductModel product}) {
    GetStorageHelper.saveProductToFavourite(product: product);
  }

  void addProductToCart({required ProductModel product}) {
    GetStorageHelper.addProductToCart(product: product);
  }

  _fillCategoriesWithStaticData() {
    var tempIcons = [
      FontAwesomeIcons.mobile,
      FontAwesomeIcons.hospital,
      FontAwesomeIcons.folder,
      FontAwesomeIcons.adversal,
      FontAwesomeIcons.football,
    ];
    for (int i = 0; i <= 4; i++) {
      categories
          .add(CategoryModel(title: 'title ${i + 1}', icon: tempIcons[i]));
    }
  }

  void _fillProductsWithStaticData() {
    for (int i = 1; i <= 10; i++) {
      products.add(
        ProductModel(
          id: i,
          // isFav: _checkIfAProductFavourite(id: products[i].id),
          name: 'name $i',
          description: 'this is the description of the item on this category',
          image: 'assets/images/product.png',
          price: 12.99,
        ),
      );
    }

    for (var product in products) {
      product.isFav = _checkIfAProductFavourite(id: product.id);
      product.isInCart = _checkIfAProductInCart(id: product.id);
    }
  }

  bool _checkIfAProductFavourite({required int id}) {
    var favouriteProducts = GetStorageHelper.getFavouriteProducts();
    for (var product in favouriteProducts) {
      if (product['id'] == id) return true;
    }
    return false;
  }

  bool _checkIfAProductInCart({required int id}) {
    var productsInCart = GetStorageHelper.getProductInCart();
    for (var product in productsInCart) {
      if (product['id'] == id) return true;
    }
    return false;
  }
}
