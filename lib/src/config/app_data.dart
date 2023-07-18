import 'package:green_grocer/src/models/cart_item.dart';
import 'package:green_grocer/src/models/item_model.dart';

ItemModel apple = ItemModel(
  descripition:
      'A melhor maca da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);
ItemModel grape = ItemModel(
  descripition:
      'A melhor uva da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
);
ItemModel guava = ItemModel(
  descripition:
      'A melhor goiaba da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/guava.png',
  itemName: 'Goiaba',
  price: 11.4,
  unit: 'kg',
);
ItemModel kiwi = ItemModel(
  descripition:
      'O melhor kiwi da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/kiwi.png',
  itemName: 'Kiwi',
  price: 5.5,
  unit: 'kg',
);
ItemModel mango = ItemModel(
  descripition:
      'A melhor manga da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'kg',
);
ItemModel papaya = ItemModel(
  descripition:
      'O melhor mamão da região e que conta com o melhor preco de qualquer quitanda. ',
  imageUrl: 'assets/img/papaya.png',
  itemName: 'Mamão',
  price: 8,
  unit: 'kg',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categorias = [
  'Frutas',
  'Legumes',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 2,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];
