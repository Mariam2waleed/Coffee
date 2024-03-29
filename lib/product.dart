class Product {
  String name, image;
  final int price;

  Product({required this.name, required this.image, required this.price});
}

List<Product> products = [
  Product(name: 'Espresso', image: 'assets/images/espresso.svg', price: 140),
  Product(
      name: 'Cappuccino', image: 'assets/images/cappuccino.svg', price: 120),
  Product(name: 'Macchiato', image: 'assets/images/macchiato.svg', price: 135),
  Product(name: 'Mocha', image: 'assets/images/mocha.svg', price: 145),
  Product(name: 'Latte', image: 'assets/images/latte.svg', price: 110),
];
