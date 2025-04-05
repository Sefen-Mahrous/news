import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/articles_list.dart';

class ArticlesListViewBuilder extends StatefulWidget {
  const ArticlesListViewBuilder({super.key});

  @override
  State<ArticlesListViewBuilder> createState() =>
      _ArticlesListViewBuilderState();
}

class _ArticlesListViewBuilderState extends State<ArticlesListViewBuilder> {
  List<ArticleModel> articlesList = [];
  bool isLouding = true;
  @override
  void initState() {
    super.initState();
    getMethod();
  }

  Future<void> getMethod() async {
    articlesList = await NewsServices().getNews();
    isLouding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLouding
        ? SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: CircularProgressIndicator()),
        )
        : ArticlesList(articlesModel: articlesList);
  }
}
