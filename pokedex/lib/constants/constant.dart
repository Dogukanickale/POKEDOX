import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static var getPokeInfTextStyle;

  Constants._(); // kurucu metod gizli

  static const String title = "Pokedex";
  static TextStyle getTitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(30));
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size) {
    // telefon ayarlarından font size büyütürsek uygulamadaki istediğimiz yerleri büyütebiliriz
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }

  static getPokeInfText() {
    return TextStyle(
      fontSize: _calculateFontSize(16),
      color: Colors.black,
    );
  }

  static getPokeInfLabelText() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }
}
