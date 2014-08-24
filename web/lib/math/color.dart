part of ThreeJSWrapper;

class Color extends ThreeBase
{
  Color(int hex)
  {
    _obj = new JsObject(context["THREE"]["Color"], [ hex ]);
  }
  
  Color.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }

  num get r => _obj["r"];
  void set r(num r)
  {
    _obj["r"] = r;
  }
  
  num get g => _obj["g"];
  void set g(num g)
  {
    _obj["g"] = g;
  }
  
  num get b => _obj["b"];
  void set b(num b)
  {
    _obj["b"] = b;
  }
  
  
  // == METHODS ==
  
  
  Color copy(Color color)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("copy", [ colorJS ]);
    return this;
  }
  
  Color copyGammaToLinear(Color color)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("copyGammaToLinear", [ colorJS ]);
    return this;
  }
  
  Color copyLinearToGamma(Color color)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("copyLinearToGamma", [ colorJS ]);
    return this;
  }
  
  Color convertGammaToLinear()
  {
    _obj.callMethod("convertGammaToLinear");
    return this;
  }
  
  Color convertLinearToGamma()
  {
    _obj.callMethod("convertLinearToGamma");
    return this;
  }
  
  Color setRGB(num r, num g, num b)
  {
    _obj.callMethod("setRGB", [ r, g, b ]);
    return this;
  }
  
  int getHex() => _obj.callMethod("getHex");

  String getHexString() => _obj.callMethod("getHexString");
  
  Color setHex(int hex)
  {
    _obj.callMethod("setHex", [ hex ]);
    return this;
  }
  
  Color setStyle(String style)
  {
    _obj.callMethod("setStyle", [ style ]);
    return this;
  }
  
  String getStyle() => _obj.callMethod("getStyle");
  
  Color setHSL(num h, num s, num l)
  {
    _obj.callMethod("setHSL", [ h, s, l ]);
    return this;
  }
  
  Map getHSL() => _obj.callMethod("getHSL");
  
  Color offsetHSL(num h, num s, num l)
  {
    _obj.callMethod("offsetHSL", [ h, s, l ]);
    return this;
  }
  
  Color add(Color color)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("add", [ colorJS ]);
    return this;
  }
  
  Color addColors(Color color1, Color color2)
  {
    JsObject color1JS = color1._obj;
    JsObject color2JS = color2._obj;
    _obj.callMethod("addColors", [ color1JS, color2JS ]);
    return this;
  }
  
  Color addScalar(num s)
  {
    _obj.callMethod("addScalar", [ s ]);
    return this;
  }
  
  Color multiply(Color color)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("multiply", [ colorJS ]);
    return this;
  }
  
  Color multiplyScalar(num s)
  {
    _obj.callMethod("multiplyScalar", [ s ]);
    return this;
  }
  
  Color lerp(Color color, num alpha)
  {
    JsObject colorJS = color._obj;
    _obj.callMethod("lerp", [ colorJS, alpha ]);
    return this;
  }
  
  bool equals(Color c) => _obj.callMethod("equals", [ c._obj ]);
  
  Color clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Color clone = new Color.fromJsObject(cloned);
    return clone;
  }
  
  Color set(Object value)
  {
    _obj.callMethod("set", [ value ]);
    return this;
  }
}