class Coffee {
  String id;
  String type;
  String ingredient;
  String description;
  double star;
  double price;
  String imageAsset;

  Coffee({
    required this.id,
    required this.type,
    required this.ingredient,
    required this.description,
    required this.star,
    required this.price,
    required this.imageAsset,
  });
}

var CoffeeList = [
  Coffee(
    id: '1',
    type: 'Cappuccino',
    ingredient: 'factory waste',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    star: 4.5,
    price: 3.12,
    imageAsset: 'assets/images/1.png',
  ),
  Coffee(
    id: '2',
    type: 'Machiato',
    ingredient: 'children tears',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    star: 4.5,
    price: 4.53,
    imageAsset: 'assets/images/2.png',
  ),
  Coffee(
    id: '3',
    type: 'Latte',
    ingredient: 'wood chippings',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    star: 4.5,
    price: 2.23,
    imageAsset: 'assets/images/3.png',
  ),
  Coffee(
    id: '4',
    type: 'Americano',
    ingredient: 'camel egg',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    star: 4.5,
    price: 3.58,
    imageAsset: 'assets/images/4.png',
  ),
];
