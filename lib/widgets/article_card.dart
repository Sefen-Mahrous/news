import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(articleModel.image),
        ),
        Text(
          articleModel.title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subTitle,
          style: TextStyle(fontSize: 12, color: Colors.grey[850]),
          maxLines: 2,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
