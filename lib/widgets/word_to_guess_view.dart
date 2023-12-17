import 'package:flutter/material.dart';
import 'package:hangman/constants/colors.dart';
import 'package:hangman/constants/dimens.dart';
import 'package:hangman/widgets/hangman_title.dart';

class WordToGuessView extends StatelessWidget {
  static const double spacing = 6;
  final String wordToGuess;

  const WordToGuessView(this.wordToGuess, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.hugeMargin,
        bottom: Dimens.hugeMargin,
      ),
      child: Column(
        children: [
          const HangmanTitle(),
          _buildWord(),
          // game goal
        ],
      ),
    );
  }

  Widget _buildWord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: wordToGuess.split('').map(_buildLetter).toList(),
    );
  }

  Padding _buildLetter(String letter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing),
      child: Text(
        letter.toUpperCase(),
        style: const TextStyle(
          color: AppColors.letterColor,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
    );
  }
}