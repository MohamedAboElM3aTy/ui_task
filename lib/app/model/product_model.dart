import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String imagePath;
  final double price;
  final double? discountedPrice;

  const ProductModel({
    required this.name,
    required this.imagePath,
    required this.price,
    this.discountedPrice,
  });

  @override
  List<Object?> get props => [
        name,
        discountedPrice,
        price,
        imagePath,
      ];
}
