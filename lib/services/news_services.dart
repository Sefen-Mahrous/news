import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getNews(String category) async {
    try {
      String domain = 'https://newsdata.io/api/1';
      String apiKey = 'pub_78058c43eaba119311ea385aa5d652cb68133';

      Response response = await dio.get(
        '$domain/latest?apikey=$apiKey&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
