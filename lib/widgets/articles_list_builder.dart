import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/articles_list.dart';

class ArticlesListViewBuilder extends StatefulWidget {
  const ArticlesListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<ArticlesListViewBuilder> createState() =>
      _ArticlesListViewBuilderState();
}

class _ArticlesListViewBuilderState extends State<ArticlesListViewBuilder> {
  Future<List<ArticleModel>>? futureList;

  @override
  void initState() {
    super.initState();
    futureList = NewsServices().getNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureList,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: Text('Opps there is an error')),
          );
        } else if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Text('There is no data')),
            );
          }
          return ArticlesList(articlesModel: snapshot.data!);
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
