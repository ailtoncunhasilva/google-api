import 'package:bitzen_test/app/shared/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';

import '../../core/const.dart';

class PersonalizedTitleWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  PersonalizedTitleWidget({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            color: kPrimaryColor,
          ),
          Positioned(
            top: 10,
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: kSpacing),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 40,
              decoration: BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 0,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: kSpacing / 2),
                    child: Icon(icon, color: Colors.white),
                  ),
                  TextStyleWidget(
                    text: title,
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}