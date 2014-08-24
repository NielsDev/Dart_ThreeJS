part of ThreeJSWrapper;

class Vector4 extends ThreeBase
{
  Vector4(num x, num y, num z, num w)
  {
    _obj = new JsObject(context["THREE"]["Vector4"], [ x, y, z, w ]);
  }
  
  Vector4.fromJsObject(JsObject obj)
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
  
  num get z => _obj["z"];
  void set z(num z)
  {
    _obj["z"] = z;
  }
  
  num get w => _obj["w"];
  void set w(num w)
  {
    _obj["w"] = w;
  }
  
  
  // == METHODS ==
  
  
  Vector4 set(num x, num y, num z, num w)
  {
    _obj.callMethod("set", [ x, y, z, w ]);
    return this;
  }
  
  Vector4 copy(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("copy", [ vJS ]);
    return this;
  }
  
  Vector4 add(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("add", [ vJS ]);
    return this;
  }
  
  Vector4 addVectors(Vector4 a, Vector4 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("addVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector4 sub(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("sub", [ vJS ]);
    return this;
  }
  
  Vector4 subVectors(Vector4 a, Vector4 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("subVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector4 multiplyScalar(num s)
  {
    _obj.callMethod("multiplyScalar", [ s ]);
    return this;
  }
  
  Vector4 divideScalar(num s)
  {
    _obj.callMethod("divideScalar", [ s ]);
    return this;
  }
  
  Vector4 negate()
  {
    _obj.callMethod("negate");
    return this;
  }
  
  num dot(Vector4 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("dot", [ vJS ]);
  }
  
  num lengthSq() => _obj.callMethod("lengthSq");
  
  num length() => _obj.callMethod("length");
  
  num lengthManhattan() => _obj.callMethod("lengthManhattan");
  
  Vector4 normalize()
  {
    _obj.callMethod("normalize");
    return this;
  }
  
  num distanceTo(Vector4 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceTo", [ vJS ]);
  }
  
  num distanceToSquared(Vector4 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceToSquared", [ vJS ]);
  }
  
  Vector4 setLength(num l)
  {
    _obj.callMethod("setLength", [ l ]);
    return this;
  }
  
  bool equals(Vector4 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("equals", [ vJS ]);
  }
  
  Vector4 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Vector4 clone = new Vector4.fromJsObject(cloned);
    return clone;
  }
  
  Vector4 clamp(Vector4 min, Vector4 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj.callMethod("clamp", [ minJS, maxJS ]);
    return this;
  }
  
  Vector4 clampScalar(num min, num max)
  {
    _obj.callMethod("clampScalar", [ min, max ]);
    return this;
  }
  
  Vector4 floor()
  {
    _obj.callMethod("floor");
    return this;
  }
  
  Vector4 ceil()
  {
    _obj.callMethod("ceil");
    return this;
  }
  
  Vector4 round()
  {
    _obj.callMethod("round");
    return this;
  }
  
  Vector4 roundToZero()
  {
    _obj.callMethod("roundToZero");
    return this;
  }
  
  Vector4 applyMatrix4(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix4", [ matrixJS ]);
    return this;
  }
  
  Vector4 divide(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("divide", [ vJS ]);
    return this;
  }
  
  Vector4 multiply(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("multiply", [ vJS ]);
    return this;
  }
  
  Vector4 lerp(Vector4 v, num alpha)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("lerp", [ vJS, alpha ]);
    return this;
  }
  
  Vector4 setAxisAngleFromRotationMatrix(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setAxisAngleFromRotationMatrix", [ matrixJS ]);
    return this;
  }
  
  Vector4 setAxisAngleFromQuaternion(Quaternion quaternion)
  {
    JsObject quaternionJS = quaternion._obj;
    _obj.callMethod("setAxisAngleFromQuaternion", [ quaternionJS ]);
    return this;
  }
  
  void setComponent(int index, num value) => _obj.callMethod("setComponent", [ index, value ]);
  
  Vector4 addScalar(num s)
  {
    _obj.callMethod("addScalar", [ num ]);
    return this;
  }
  
  num getComponent(int index) => _obj.callMethod("getComponent", [ index ]);
  
  Vector4 fromArray(List<num> array)
  {
    _obj.callMethod("fromArray", [ array ]);
    return this;
  }
  
  List<num> toArray() => [ _obj["x"], _obj["y"], _obj["z"], _obj["w"] ];
  
  Vector4 min(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("min", [ vJS ]);
    return this;
  }
  
  Vector4 max(Vector4 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("max", [ vJS ]);
    return this;
  }
  
  Vector4 setX(num x)
  {
    _obj.callMethod("setX", [ x ]);
    return this;
  }
  
  Vector4 setY(num y)
  {
    _obj.callMethod("setY", [ y ]);
    return this;
  }
  
  Vector4 setZ(num z)
  {
    _obj.callMethod("setZ", [ z ]);
    return this;
  }
  
  Vector4 setW(num w)
  {
    _obj.callMethod("setW", [ w ]);
    return this;
  }
}