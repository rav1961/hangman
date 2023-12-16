import 'package:flutter/material.dart';
import 'package:hangman/constants/dimens.dart';

class WordToGuessView extends StatelessWidget {
  const WordToGuessView({ super.key });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(
            top: Dimens.hugeMargin,
            bottom: Dimens.normalMargin,
        ),
        child: Column(
          children: [
            // title
            // word to guess
            // game goal
          ],
        ),
    );
  }
  
}