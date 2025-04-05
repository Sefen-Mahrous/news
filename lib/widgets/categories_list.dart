import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      image: 'assets/business.avif',
      title: 'Business',
      category: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      title: 'Entertainmen',
      category: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      title: 'Health',
      category: 'health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      title: 'Science',
      category: 'science',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      title: 'Sports',
      category: 'sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      title: 'Technology',
      category: 'technology',
    ),
  ];

  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CatagoryCard(categoryModel: categoryList[index]);
        },
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
