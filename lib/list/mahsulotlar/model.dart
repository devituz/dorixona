  // lib/models/product.dart

  import 'package:equatable/equatable.dart';

  /// A model class representing an analog product.
  class Analog extends Equatable {
    final int id;
    final String img;
    final String name;
    final String from;
    final String company;
    final int price;
    final String category;

    const Analog({
      required this.id,
      required this.img,
      required this.name,
      required this.from,
      required this.company,
      required this.price,
      required this.category,
    });

    factory Analog.fromJson(Map<String, dynamic> json) {
      return Analog(
        id: json['id'],
        img: json['img'],
        name: json['name'],
        from: json['from'],
        company: json['company'],
        price: json['price'],
        category: json['catgeoriya'],
      );
    }

    @override
    List<Object?> get props => [
      id,
      img,
      name,
      from,
      company,
      price,
      category,
    ];
  }

  /// A model class representing a product.
  class Product extends Equatable {
    final int id;
    final String img;
    final String name;
    final String from;
    final String company;
    final int price;
    final String category;
    final List<Analog> analogs;

    const Product({
      required this.id,
      required this.img,
      required this.name,
      required this.from,
      required this.company,
      required this.price,
      required this.category,
      required this.analogs,
    });

    factory Product.fromJson(Map<String, dynamic> json) {
      var analogsList = json['analog'] as List;
      List<Analog> analogs = analogsList.map((i) => Analog.fromJson(i)).toList();

      return Product(
        id: json['id'],
        img: json['img'],
        name: json['name'],
        from: json['from'],
        company: json['company'],
        price: json['price'],
        category: json['catgeoriya'],
        analogs: analogs,
      );
    }

    @override
    List<Object?> get props => [
      id,
      img,
      name,
      from,
      company,
      price,
      category,
      analogs,
    ];
  }
