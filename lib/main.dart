import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_flutter/screens/search_screen.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qiita Search',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Hiragino Sans',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF55C500),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
            ),
      ),
      home: const SearchScreen(),
    );
  }
}



