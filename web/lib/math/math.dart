library ThreeMath;

import 'dart:js' show context, JsObject;

class Math
{
  static JsObject ThreeMath = context["THREE"]["Math"];
  
  static String generateUUID() => ThreeMath.callMethod("generateUUID");
  static num clamp(num x, num a, num b) => ThreeMath.callMethod("clamp", [ x, a, b ]);
  static num clampBottom(num x, num a) => ThreeMath.callMethod("clamp", [ x, a ]);
  static num mapLinear(num x, num a1, num a2, num b1, num b2) => ThreeMath.callMethod("mapLinear", [ x, a1, a2, b1, b2 ]);
  static num random16() => ThreeMath.callMethod("random16");
  static int randInt(int low, int high) => ThreeMath.callMethod("randInt", [ low, high ]);
  static num randFloat(num low, num high) => ThreeMath.callMethod("randFloat", [ low, high ]);
  static num randFloatSpread(num range) => ThreeMath.callMethod("randFloatSpread", [ range ]);
  static num sign(num x) => ThreeMath.callMethod("sign", [ x ]);
  static num degToRad(num degrees) => ThreeMath.callMethod("degToRad", [ degrees ]);
  static num radToDeg(num radians) => ThreeMath.callMethod("radToDeg", [ radians ]);
  static num smoothStep(num x, num min, num max) => ThreeMath.callMethod("smoothStep", [ x, min, max ]);
  static num smootherStep(num x, num min, num max) => ThreeMath.callMethod("smootherStep", [ x, min, max ]);
}