import 'package:flutter/material.dart';
import 'package:hangman/constants/dimens.dart';

class HangmanTitle extends StatelessWidget {
  const HangmanTitle({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Dimens.hugeMargin),
      child: Text(
        "Hangman",
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}