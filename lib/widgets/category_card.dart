import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CatagoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CatagoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 220,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(categoryModel.image),
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
