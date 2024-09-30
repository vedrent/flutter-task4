import 'package:flutter/material.dart';
import 'package:task_4/presentation/models/ProductModel.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onTap;

  const ProductWidget({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
      child: ListTile(
        onTap: onTap,
        title: Text(product.title),
        subtitle: Text(product.subtitle),
        leading: Image.network(
          product.imageUri,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        trailing: Text("${product.cost}₽", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      ),
    );
  }
}