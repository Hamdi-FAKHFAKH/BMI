import 'package:flutter/material.dart';
class MyColor {
  static const MaterialColor blackbleu = MaterialColor(
    0xff070919, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50:  const Color(0xff0a0e21), //10%
      100: const Color(0xff1d1f33), //20%
      200: const Color(0xff232538),//30%
      300: const Color(0xff545664),//40%
      400: const Color(0xff858691),//50%
      500: const Color(0xff9d9ea7),//60%
      600: const Color(0xffcecfd3),//70%
      700: const Color(0xffe7e7e9),//80%

    },
  );
}
