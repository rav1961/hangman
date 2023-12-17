import 'package:flutter/material.dart';
import 'package:hangman/widgets/Hangman.dart';
import 'package:hangman/widgets/keyboard/hangman_keyboard.dart';
import 'package:hangman/widgets/word_to_guess_view.dart';

class HangmanPage extends StatelessWidget {
  const HangmanPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: WordToGuessView("A_d_"),
        ),
        Expanded(
          flex: 2,
          child: Hangman(),
        ),
        HangmanKeyboard(),
      ],
    );
  }
}