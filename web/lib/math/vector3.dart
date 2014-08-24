part of ThreeJSWrapper;

class Vector3 extends ThreeBase
{
  Vector3(num x, num y, num z)
  {
    _obj = new JsObject(context["THREE"]["Vector3"], [ x, y, z ]);
  }
  
  Vector3.fromJsObject(JsObject obj)
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
  
  
  // == METHODS ==
  
  
  Vector3 set(num x, num y, num z)
  {
    _obj.callMethod("set", [ x, y, z ]);
    return this;
  }
  
  Vector3 copy(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("copy", [ vJS ]);
    return this;
  }
  
  Vector3 add(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("add", [ vJS ]);
    return this;
  }
  
  Vector3 addVectors(Vector3 a, Vector3 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("addVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector3 sub(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("sub", [ vJS ]);
    return this;
  }
  
  Vector3 subVectors(Vector3 a, Vector3 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("subVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector3 multiplyScalar(num s)
  {
    _obj.callMethod("multiplyScalar", [ s ]);
    return this;
  }
  
  Vector3 divideScalar(num s)
  {
    _obj.callMethod("divideScalar", [ s ]);
    return this;
  }
  
  Vector3 negate()
  {
    _obj.callMethod("negate");
    return this;
  }
  
  num dot(Vector3 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("dot", [ vJS ]);
  }
  
  num lengthSq() => _obj.callMethod("lengthSq");
  
  num length() => _obj.callMethod("length");
  
  num lengthManhattan() => _obj.callMethod("lengthManhattan");
  
  Vector3 normalize()
  {
    _obj.callMethod("normalize");
    return this;
  }
  
  num distanceTo(Vector3 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceTo", [ vJS ]);
  }
  
  num distanceToSquared(Vector3 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("distanceToSquared", [ vJS ]);
  }
  
  Vector3 setLength(num l)
  {
    _obj.callMethod("setLength", [ l ]);
    return this;
  }
  
  Vector3 cross(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("cross", [ vJS ]);
    return this;
  }
  
  Vector3 crossVectors(Vector3 a, Vector3 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("crossVectors", [ aJS, bJS ]);
    return this;
  }
  
  Vector3 setFromMatrixPosition(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromMatrixPosition", [ matrixJS ]);
    return this;
  }
  
  Vector3 setFromMatrixScale(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromMatrixScale", [ matrixJS ]);
    return this;
  }
  
  bool equals(Vector3 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("equals", [ vJS ]);
  }
  
  Vector3 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Vector3 clone = new Vector3.fromJsObject(cloned);
    return clone;
  }
  
  Vector3 clamp(Vector3 min, Vector3 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj.callMethod("clamp", [ minJS, maxJS ]);
    return this;
  }
  
  Vector3 clampScalar(num min, num max)
  {
    _obj.callMethod("clampScalar", [ min, max ]);
    return this;
  }
  
  Vector3 floor()
  {
    _obj.callMethod("floor");
    return this;
  }
  
  Vector3 ceil()
  {
    _obj.callMethod("ceil");
    return this;
  }
  
  Vector3 round()
  {
    _obj.callMethod("round");
    return this;
  }
  
  Vector3 roundToZero()
  {
    _obj.callMethod("roundToZero");
    return this;
  }
  
  Vector3 applyMatrix3(Matrix3 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix3", [ matrixJS ]);
    return this;
  }
  
  Vector3 applyMatrix4(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix4", [ matrixJS ]);
    return this;
  }
  
  Vector3 projectOnPlane(Vector3 planeNormal)
  {
    JsObject planeNormalJS = planeNormal._obj;
    _obj.callMethod("projectOnPlane", [ planeNormalJS ]);
    return this;
  }
  
  Vector3 projectOnVector(Vector3 vector)
  {
    JsObject vectorJS = vector._obj;
    _obj.callMethod("projectOnVector", [ vectorJS ]);
    return this;
  }
  
  Vector3 divide(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("divide", [ vJS ]);
    return this;
  }
  
  Vector3 transformDirection(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("transformDirection", [ matrixJS ]);
    return this;
  }
  
  Vector3 applyAxisAngle(Vector3 axis, num angle)
  {
    JsObject axisJS = axis._obj;
    _obj.callMethod("applyAxisAngle", [ axisJS, angle ]);
    return this;
  }
  
  num angleTo(Vector3 v)
  {
    JsObject vJS = v._obj;
    return _obj.callMethod("angleTo", [ vJS ]);
  }
  
  Vector3 setFromMatrixColumn(int index, Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromMatrixColumn", [ index, matrixJS ]);
    return this;
  }
  
  Vector3 reflect(Vector3 normal)
  {
    JsObject normalJS = normal._obj;
    _obj.callMethod("reflect", [ normalJS ]);
    return this;
  }
  
  Vector3 multiply(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("multiply", [ vJS ]);
    return this;
  }
  
  Vector3 applyProjection(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyProjection", [ matrixJS ]);
    return this;
  }
  
  Vector3 applyEuler(Euler euler)
  {
    JsObject eulerJS = euler._obj;
    _obj.callMethod("applyEuler", [ euler ]);
    return this;
  }
  
  Vector3 applyQuaternion(Quaternion quaternion)
  {
    JsObject quaternionJS = quaternion._obj;
    _obj.callMethod("applyQuaternion", [ quaternionJS ]);
    return this;
  }
  
  Vector3 lerp(Vector3 v, num alpha)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("lerp", [ vJS, alpha ]);
    return this;
  }
  
  void setComponent(int index, num value) => _obj.callMethod("setComponent", [ index, value ]);
  
  Vector3 addScalar(num s)
  {
    _obj.callMethod("addScalar", [ num ]);
    return this;
  }
  
  num getComponent(int index) => _obj.callMethod("getComponent", [ index ]);
  
  Vector3 fromArray(List<num> array)
  {
    _obj.callMethod("fromArray", [ new JsObject.jsify(array) ]);
    return this;
  }
  
  List<num> toArray() => [ _obj["x"], _obj["y"], _obj["z"] ];
  
  Vector3 min(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("min", [ vJS ]);
    return this;
  }
  
  Vector3 max(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("max", [ vJS ]);
    return this;
  }
  
  Vector3 setX(num x)
  {
    _obj.callMethod("setX", [ x ]);
    return this;
  }
  
  Vector3 setY(num y)
  {
    _obj.callMethod("setY", [ y ]);
    return this;
  }
  
  Vector3 setZ(num z)
  {
    _obj.callMethod("setZ", [ z ]);
    return this;
  }
}