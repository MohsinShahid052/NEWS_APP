import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:news_app/models/categories_news_model.dart';

import '../models/news_channels_headlines_model.dart';
import '../repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewchannelHeadlinesApi(String newsChannel) async{
    final response = await _rep.fetchNewchannelHeadlinesApi(newsChannel );
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{
    final response = await _rep.fetchCategoriesNewsApi(category );
    return response;
  }
}