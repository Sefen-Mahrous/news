import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/article_card.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  final List<ArticleModel> articlesModel = const [
    ArticleModel(
      image: 'assets/Ferreira.jpeg',
      title:
          'this is a very long text does not have mean but i put it for test the code that i will write here thak you for your will reading iam sorry for lost your time',
      subTitle:
          'this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here',
    ),
    ArticleModel(
      image: 'assets/Ferreira.jpeg',
      title:
          'this is a very long text does not have mean but i put it for test the code that i will write here thak you for your will reading iam sorry for lost your time',
      subTitle:
          'this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here',
    ),
    ArticleModel(
      image: 'assets/Ferreira.jpeg',
      title:
          'this is a very long text does not have mean but i put it for test the code that i will write here thak you for your will reading iam sorry for lost your time',
      subTitle:
          'this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here',
    ),
    ArticleModel(
      image: 'assets/Ferreira.jpeg',
      title:
          'this is a very long text does not have mean but i put it for test the code that i will write here thak you for your will reading iam sorry for lost your time',
      subTitle:
          'this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here',
    ),
  ];

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
