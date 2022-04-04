import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });
  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
        name: snap['name'],
        category: snap['category'],
        imageUrl: snap['imageUrl'],
        price: snap['price'],
        isRecommended: snap['isRecommended'],
        isPopular: snap['isPopular']);
    return product;
  }

  static List<Product> products = [
    Product(
        name: 'Soft Drink 1',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8anVpY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: false,
        isPopular: false),
    Product(
        name: 'Soft Drink 2',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1600271886742-f049cd451bba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8anVpY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Soft Drink 3',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1568909344668-6f14a07b56a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8anVpY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Soft Drink 4',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8anVpY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Soft Drink 5',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1522427088495-81d38b91befb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGp1aWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Soft Drink 6',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/flagged/photo-1557753478-b9fb74f39eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGp1aWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Soft Drink 7',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1588929473475-d16ffd5d068c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGp1aWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Soft Drink 8',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1546173159-315724a31696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGp1aWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Soft Drink 9',
        category: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1497534446932-c925b458314e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGp1aWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        price: 299,
        isRecommended: true,
        isPopular: false),
  ];
}
