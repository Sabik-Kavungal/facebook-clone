import 'package:flutter/material.dart';

class GlobalVariable {
  static const Color Scaffold = Color(0xFFF0F2F5);
  static const Color facebookBlue = Color(0xFF1777F2);

  static const LinearGradient createRoomGradient =
      LinearGradient(colors: [Color(0xFF496AE1), Color(0xFFCE4881)]);

  static const Color online = Color(0xFF4BCB1F);
  static const LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black26]);
}
