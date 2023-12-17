import 'package:flutter/material.dart';
import 'package:hangman/constants/colors.dart';
import 'package:hangman/constants/dimens.dart';

class HangmanKeyboardKey extends StatelessWidget {
  final String letter;
  final double width;

  const HangmanKeyboardKey({ required this.letter, required this.width, super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: _buildKeyContent(),
    );
  }

  Widget _buildKeyContent() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.letterButtonBgColor,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.normalMargin),
        child: Center(
          child: Text(
            letter.toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.letterButtonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}