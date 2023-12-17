import 'package:flutter/material.dart';
import 'package:hangman/constants/dimens.dart';
import 'package:hangman/utils/keyboard_letters.dart';
import 'package:hangman/widgets/keyboard/hangman_keyboard_key.dart';

class HangmanKeyboard extends StatelessWidget {
  static const double spacing = 6;

  const HangmanKeyboard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.hugeMargin,
        bottom: Dimens.bigMargin,
      ),
      child: Column(
        children: keyboardLetters.map((String keysRow) {
          var lettersInRow = keysRow.split('');
          return _buildKeybardRow(lettersInRow, context);
        }).toList(),
      ),
    );
  }

  Widget _buildKeyboardKey(String letter, double itemWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing / 2),
      child: HangmanKeyboardKey(letter: letter, width: itemWidth),
    );
  }

  Widget _buildKeybardRow(List<String> letters, BuildContext context) {
    final itemWidth = _calculateItemWidth(context);

    return Padding(
      padding: const EdgeInsets.only(top: Dimens.normalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: letters
            .map((letter) => _buildKeyboardKey(letter, itemWidth))
            .toList(),
      ),
    );
  }

  double _calculateItemWidth(BuildContext context) {
    final maxLettersInRow = keyboardLetters.first.length;
    final spacingSumWidth = spacing * maxLettersInRow;
    final availableWidth = MediaQuery.of(context).size.width - spacingSumWidth;

    return availableWidth / maxLettersInRow;
  }
}