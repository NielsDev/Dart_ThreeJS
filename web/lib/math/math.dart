part of ThreeJSWrapper;

class Math
{
  static JsObject _context = context["THREE"]["Math"];
  
  static String generateUUID() => _context.callMethod("generateUUID");
  static num clamp(num x, num a, num b) => _context.callMethod("clamp", [ x, a, b ]);
  static num clampBottom(num x, num a) => _context.callMethod("clamp", [ x, a ]);
  static num mapLinear(num x, num a1, num a2, num b1, num b2) => _context.callMethod("mapLinear", [ x, a1, a2, b1, b2 ]);
  static num random16() => _context.callMethod("random16");
  static int randInt(int low, int high) => _context.callMethod("randInt", [ low, high ]);
  static num randFloat(num low, num high) => _context.callMethod("randFloat", [ low, high ]);
  static num randFloatSpread(num range) => _context.callMethod("randFloatSpread", [ range ]);
  static num sign(num x) => _context.callMethod("sign", [ x ]);
  static num degToRad(num degrees) => _context.callMethod("degToRad", [ degrees ]);
  static num radToDeg(num radians) => _context.callMethod("radToDeg", [ radians ]);
  static num smoothStep(num x, num min, num max) => _context.callMethod("smoothStep", [ x, min, max ]);
  static num smootherStep(num x, num min, num max) => _context.callMethod("smootherStep", [ x, min, max ]);
}