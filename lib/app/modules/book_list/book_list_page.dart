import 'package:bitzen_test/app/shared/widgets/personalized_title_widget.dart';
import 'package:flutter/material.dart';

import '../../core/const.dart';

class BookListPage extends StatefulWidget {

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTextField(),
      body: Column(
        children: [
          PersonalizedTitleWidget(title: 'GOOGLE BOOKS', icon: Icons.list),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: []),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarTextField() {
    return AppBar(
      elevation: 0,
      title: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: kSpacing),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Pesquisar',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
