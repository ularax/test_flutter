import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:test_flutter/models/article.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({
    required this.article, // 引き数にArticleインスタンスを受け取る
    super.key,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Page'),
      ),
      body: WebView(
        initialUrl: article.url, // 記事のurlを渡す
      ),
    );
  }
}
