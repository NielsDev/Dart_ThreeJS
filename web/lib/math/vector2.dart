part of ThreeJSWrapper;

class Vector2 extends ThreeBase
{
  Vector2(num x, num y)
  {
    _obj = new JsObject(context["THREE"]["Vector2"], [ x, y ]);
  }
  
  Vector2.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get x => _obj["x"];
  void set x(num x)
  {
    _obj["x"] = x;
  }
  
  num get y => _obj["y"];
  void set y(num y)
  {
    _obj["y"] = y;
  }
  
  
  // == METHODS ==
  
  
  Vector2 set(num x, num y)
  {
    _obj.callMethod("set", [ x, y ]);
    return this;
  }
  
  Vector2 copy(Vector2 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("copy", [ vJS ]);
    return this;
  }
  
  Vector2 add(Vector2 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("add", [ vJS ]);
    return this;
  }
  
  Vector2 addVectors(Vector2 a, Vector2 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("addVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector2 sub(Vector2 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("sub", [ vJS ]);
    return this;
  }
  
  Vector2 subVectors(Vector2 a, Vector2 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("subVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector2 multiplyScalar(num s)
  {
    _obj.callMethod("multiplyScalar", [ s ]);
    return this;
  }
  
  Vector2 divideScalar(num s)
  {
    _obj.callMethod("divideScalar", [ s ]);
    return this;
  }
  
  Vector2 negate()
  {
    _obj.callMethod("negate");
    return this;
  }
  
  num dot(Vector2 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("dot", [ vJS ]);
  }
  
  num lengthSq() => _obj.callMethod("lengthSq");
  
  num length() => _obj.callMethod("length");
  
  Vector2 normalize()
  {
    _obj.callMethod("normalize");
    return this;
  }
  
  num distanceTo(Vector2 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceTo", [ vJS ]);
  }
  
  num distanceToSquared(Vector2 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceToSquared", [ vJS ]);
  }
  
  Vector2 setLength(num l)
  {
    _obj.callMethod("setLength", [ l ]);
    return this;
  }
  
  bool equals(Vector2 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("equals", [ vJS ]);
  }
  
  Vector2 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Vector2 clone = new Vector2.fromJsObject(cloned);
    return clone;
  }
  
  Vector2 clamp(Vector2 min, Vector2 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj.callMethod("clamp", [ minJS, maxJS ]);
    return this;
  }
  
  Vector2 clampScalar(num min, num max)
  {
    _obj.callMethod("clampScalar", [ min, max ]);
    return this;
  }
  
  Vector2 floor()
  {
    _obj.callMethod("floor");
    return this;
  }
  
  Vector2 ceil()
  {
    _obj.callMethod("ceil");
    return this;
  }
  
  Vector2 round()
  {
    _obj.callMethod("round");
    return this;
  }
  
  Vector2 roundToZero()
  {
    _obj.callMethod("roundToZero");
    return this;
  }
  
  Vector2 lerp(Vector2 v, num alpha)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("lerp", [ vJS, alpha ]);
    return this;
  }
  
  void setComponent(int index, num value) => _obj.callMethod("setComponent", [ index, value ]);
  
  Vector2 addScalar(num s)
  {
    _obj.callMethod("addScalar", [ num ]);
    return this;
  }
  
  num getComponent(int index) => _obj.callMethod("getComponent", [ index ]);
  
  Vector2 fromArray(List<num> array)
  {
    _obj.callMethod("fromArray", [ new JsObject.jsify(array) ]);
    return this;
  }
  
  List<num> toArray() => [ _obj["x"], _obj["y"] ];
  
  Vector2 min(Vector2 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("min", [ vJS ]);
    return this;
  }
  
  Vector2 max(Vector2 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("max", [ vJS ]);
    return this;
  }
  
  Vector2 setX(num x)
  {
    _obj.callMethod("setX", [ x ]);
    return this;
  }
  
  Vector2 setY(num y)
  {
    _obj.callMethod("setY", [ y ]);
    return this;
  }
}