import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red901 = fromHex('#af0b2c');

  static Color deepOrangeA100 = fromHex('#f79489');

  static Color red900 = fromHex('#940320');

  static Color red800 = fromHex('#bf1235');

  static Color black90090 = fromHex('#90000000');

  static Color black9003f = fromHex('#3f000000');

  static Color gray300Cc = fromHex('#cce4e4e4');

  static Color black900 = fromHex('#000000');

  static Color deepOrange600 = fromHex('#ff4521');

  static Color black90063 = fromHex('#63000000');

  static Color black902 = fromHex('#030919');

  static Color deepOrange6002b = fromHex('#2bff4520');

  static Color black90026 = fromHex('#26000000');

  static Color gray600 = fromHex('#746c64');

  static Color gray700 = fromHex('#555b6a');

  static Color gray601 = fromHex('#898383');

  static Color gray400 = fromHex('#bec1c9');

  static Color gray301 = fromHex('#dfddde');

  static Color gray401 = fromHex('#c4c4c4');

  static Color orangeA700 = fromHex('#ff6600');

  static Color gray602 = fromHex('#828282');

  static Color bluegray100 = fromHex('#c9ccd3');

  static Color gray1007c = fromHex('#7cf2f2f2');

  static Color gray101 = fromHex('#f4f4f6');

  static Color gray300 = fromHex('#e4e4e4');

  static Color gray102 = fromHex('#f1f5f9');

  static Color gray100 = fromHex('#f2f2f2');

  static Color gray80060 = fromHex('#604b4645');

  static Color bluegray700 = fromHex('#475569');

  static Color black90099 = fromHex('#99000000');

  static Color bluegray500 = fromHex('#64748b');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray10047 = fromHex('#47d9d9d9');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
