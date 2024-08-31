import 'dart:convert';


import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/categories_news_model.dart';

import '../models/news_channels_headlines_model.dart';

class NewsRepository {


  Future<NewsChannelsHeadlinesModel> fetchNewchannelHeadlinesApi(String newsChannel) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=${newsChannel}&apiKey=6af44f9d17874a3a9c14ac94c425bb40';
    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return NewsChannelsHeadlinesModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }   

  
  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=${category}&apiKey=6af44f9d17874a3a9c14ac94c425bb40';
    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return CategoriesNewsModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }   
}