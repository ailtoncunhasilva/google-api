import 'package:flutter/material.dart';

import '../../shared/widgets/personalized_title_widget.dart';

class BoodkDetailPage extends StatelessWidget {
  const BoodkDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do livro'),
        elevation: 0,
      ),
      body: Column(
        children: [
          PersonalizedTitleWidget(title: 'GOOGLE BOOKS', icon: Icons.list),

        ],
      ),
    );
  }
}