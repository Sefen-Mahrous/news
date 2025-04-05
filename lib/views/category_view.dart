import 'package:flutter/material.dart';
import 'package:news/widgets/articles_list.dart';
import 'package:news/widgets/articles_list_builder.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [ArticlesListViewBuilder(category: widget.category)],
      ),
    );
  }
}
