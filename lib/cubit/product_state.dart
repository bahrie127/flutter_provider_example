part of 'product_cubit.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductInitial {}

class ProductSuccess extends ProductInitial {
  final List<Product> products;
  ProductSuccess({
    required this.products,
  });
}
