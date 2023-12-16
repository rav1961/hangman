import 'package:flutter/material.dart';
import 'package:hangman/utils/asset_paths.dart';

class Hangman extends StatelessWidget {
  const Hangman({ super.key });
  
  @override
  Widget build(BuildContext context) {
    return Image.asset(getPathToImageAsset("7.png"));
  }
}