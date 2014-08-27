part of ThreeJSWrapper;

class Quaternion extends ThreeObject
{
  Quaternion(num x, num y, num z, num w)
  {
    _obj = new JsObject(context["THREE"]["Quaternion"], [ x, y, z, w ]);
  }
  
  Quaternion.fromJsObject(JsObject obj)
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
  
  
  Quaternion set(num x, num y, num z, num w)
  {
    _obj.callMethod("set", [ x, y, z, w ]);
    return this;
  }
  
  Quaternion copy(Quaternion quaternion)
  {
    JsObject quaternionJS = quaternion._obj;
    _obj.callMethod("copy", [ quaternionJS ]);
    return this;
  }
  
  Quaternion setFromEuler(Euler euler)
  {
    JsObject eulerJS = euler._obj;
    _obj.callMethod("setFromEuler", [ eulerJS ]);
    return this;
  }
  
  Quaternion setFromAxisAngle(Vector3 axis, num angle)
  {
    JsObject axisJS = axis._obj;
    _obj.callMethod("setFromAxisAngle", [ axisJS, angle ]);
    return this;
  }
  
  Quaternion setFromRotationMatrix(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromRotationMatrix", [ matrixJS ]);
    return this;
  }
  
  Quaternion setFromUnitVectors(Vector3 vFrom, Vector3 vTo)
  {
    JsObject vFromJS = vFrom._obj;
    JsObject vToJS = vTo._obj;
    _obj.callMethod("setFromUnitVectors", [ vFromJS, vToJS ]);
    return this;
  }
  
  Quaternion inverse()
  {
    _obj.callMethod("inverse");
    return this;
  }
  
  num length() => _obj.callMethod("length");
  
  Quaternion normalize()
  {
    _obj.callMethod("normalize");
    return this;
  }
  
  Quaternion multiply(Quaternion quaternion)
  {
    JsObject quaternionJS = quaternion._obj;
    _obj.callMethod("multiply", [ quaternionJS ]);
    return this;
  }
  
  Quaternion multiplyQuaternions(Quaternion a, Quaternion b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("multiplyQuaternions", [ aJS, bJS ]);
    return this;
  }
  
  Quaternion multiplyVector3(Vector3 vector, Vector3 dest)
  {
    JsObject vectorJS = vector._obj;
    JsObject destJS = dest._obj;
    _obj.callMethod("multiplyVector3", [ vectorJS, destJS ]);
    return this;
  }
  
  Quaternion clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Quaternion clone = new Quaternion.fromJsObject(cloned);
    return clone;
  }
  
  Quaternion slerp(Quaternion qa, Quaternion qb, Quaternion qm, num t)
  {
    JsObject qaJS = qa._obj;
    JsObject qbJS = qb._obj;
    JsObject qmJS = qm._obj;
    _obj.callMethod("slerp", [ qaJS, qbJS, qmJS, t ]);
    return this;
  }
  
  List<num> toArray() => [ _obj["x"], _obj["y"], _obj["z"], _obj["w"] ];
  
  bool equals(Quaternion quaternion)
  {
    JsObject quaternionJS = quaternion._obj;
    return _obj.callMethod("equals", [ quaternionJS ]);
  }
  
  num lengthSq() => _obj.callMethod("lengthSq");
  
  Quaternion fromArray(List<num> array)
  {
    _obj.callMethod("fromArray", [ new JsObject.jsify(array) ]);
    return this;
  }
  
  Quaternion conjugate()
  {
    _obj.callMethod("conjugate");
    return this;
  }
}