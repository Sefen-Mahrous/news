import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/article_card.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key, required this.articlesModel});

  final List<ArticleModel> articlesModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articlesModel.length, (
        context,
        index,
      ) {
        return ArticleCard(articleModel: articlesModel[index]);
      }),
    );
  }
}
