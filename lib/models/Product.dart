import 'dart:collection';

import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String imgUrl;
  final num price;
  final color;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.imgUrl,
      @required this.price,
      @required this.color});
}

class ProductDataProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p3',
        title: 'Baxtning sariq portlashi',
        description: 'Siz zavq olish uchun hoziroq sinab ko\'ring! ',
        imgUrl:
            'https://www.recipetineats.com/wp-content/uploads/2019/09/Tequila-Sunrise.jpg',
        price: 15.00,
        color: '0xFFFFF59D'),
    Product(
      id: 'p1',
      title: 'Bahor uyg\'onishi',
      description: 'Siz zavq olish uchun hoziroq sinab ko\'ring!',
      price: 77.99,
      imgUrl:
          'https://hg-images.condecdn.net/image/m9kmKQ4JKBn/crop/810/f/Turquoise-Tonic-house-29may15_pr_b.jpg',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p2',
      title: 'Yozgi obaldeoz',
      description: 'Siz zavq olish uchun hoziroq sinab ko\'ring!',
      price: 99.99,
      imgUrl:
          'https://minimalistbaker.com/wp-content/uploads/2012/08/Grown-Up-Watermelon-Limeades.jpg',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p4',
      title: 'Yashil zavq',
      description: ' Siz zavq olish uchun hoziroq sinab ko\'ring!',
      price: 35.99,
      imgUrl:
          'https://www.baconismagic.ca/wp-content/uploads/2018/02/Cuba-libre-cocktail-recipe-720x720.jpg',
      color: '0xFFCCFF90',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product geElementById(String id) =>
      _items.singleWhere((value) => value.id == id);

      
}
