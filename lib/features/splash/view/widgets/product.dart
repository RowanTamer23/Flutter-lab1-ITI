class Product {
  final String name;
  final double price;
  final String image;
  final bool freeShipping;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    this.freeShipping = false,
  });
}

const hotSales = [
  Product(
    name: 'Macbook Air M1',
    price: 29999,
    freeShipping: true,
    image: 'assets/images/laptop.png',
  ),
  Product(
    name: 'Sony WH-1000XM5',
    price: 4999,
    freeShipping: true,
    image: 'assets/images/headphones.png',
  ),
  Product(
    name: 'FreeBuds Huawei',
    price: 1999,
    freeShipping: true,
    image: 'assets/images/earbuds.png',
  ),
];
