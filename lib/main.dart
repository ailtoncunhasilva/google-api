import 'package:bitzen_test/app/modules/book_list/book_list_page.dart';
import 'package:flutter/material.dart';

import 'app/shared/styles/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.mainTheme,
      debugShowCheckedModeBanner: false,
      home: BookListPage(),
    );
  }
}

