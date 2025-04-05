import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/web_view.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ArticleWebView(articleModel: articleModel);
            },
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              height: 250,
              fit: BoxFit.cover,
              imageUrl: articleModel.image ?? 'assets/default.jpg',
              placeholder:
                  (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget:
                  (context, url, error) => Image.asset('assets/defult.jpg'),
            ),
          ),

          Text(
            articleModel.title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articleModel.subTitle ?? '',
            style: TextStyle(fontSize: 12, color: Colors.grey[850]),
            maxLines: 2,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
