import 'dart:collection';

import 'package:flutter/cupertino.dart';

class Cart {
  final String id;
  final String title;
  final int number;
  final num price;
  final String imageUrl;

  Cart(
      {@required this.id,
      @required this.title,
      @required this.number,
      @required this.price,
      @required this.imageUrl});
}

class CartDateProvider with ChangeNotifier {
  Map<String, Cart> _cartItems = {};
  UnmodifiableMapView<String, Cart> get cartItems =>
      UnmodifiableMapView(_cartItems);

  int get cartItemsCount => _cartItems.length;

  double get totalAmount {
    var total = 0.0;
    _cartItems.forEach((key, item) {
      total += item.price * item.number;
    });
    return total;
  }

  void addItem({productId, title, price, imageUrl}) {
    if (_cartItems.containsKey(productId)) {
      _cartItems.update(
          productId,
          (ex) => Cart(
              id: ex.id,
              title: ex.title,
              number: ex.number + 1,
              price: ex.price,
              imageUrl: ex.imageUrl));
    } else {
      _cartItems.putIfAbsent(
          productId,
          () => Cart(
              id: '${DateTime.now()}',
              title: title,
              number: 1,
              price: price,
              imageUrl: imageUrl));
    }
    notifyListeners();
  }

  void delateItem(String productId) {
    _cartItems.remove(productId);
    notifyListeners();
  }

  // product ++
  void updateItemsAddOne(String productId) {
    _cartItems.update(
        productId,
        (ex) => Cart(
            id: ex.id,
            title: ex.id,
            number: ex.number + 1,
            price: ex.price,
            imageUrl: ex.imageUrl));
    notifyListeners();
  }

  // product --
  void updateItemsSubOne(String productId) {
    if (_cartItems[productId].number < 2) {
      delateItem(productId);
    } else {
      _cartItems.update(
          productId,
          (ex) => Cart(
              id: ex.id,
              title: ex.id,
              number: ex.number - 1,
              price: ex.price,
              imageUrl: ex.imageUrl));
    }
    notifyListeners();
  }

  void clear() {
    _cartItems = {};
  }
}
