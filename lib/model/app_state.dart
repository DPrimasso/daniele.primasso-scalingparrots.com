import 'package:flutter/material.dart';

class AppState {
  double sliderFontSize;
  bool bold;
  bool italic;
  String response;
  AppState({@required this.sliderFontSize, this.bold = false, this.italic = false, this.response});

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    bold = another.bold;
    italic = another.italic;
    response = another.response;
  }

  double get viewFontSize => sliderFontSize * 30;
}