part of ThreeJSWrapper;

class Euler extends ThreeObject
{
  Euler(num x, num y, num z, String order)
  {
    _obj = new JsObject(context["THREE"]["Euler"], [ x, y, z, order ]);
  }
  
  Euler.fromJsObject(JsObject obj)
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
  
  String get order => _obj["order"];
  void set order(String order)
  {
    _obj["order"] = order;
  }
  
  
  // == METHODS ==
  
  
  Euler copy(Euler euler)
  {
    JsObject eulerJS = euler._obj;
    _obj.callMethod("copy", [ eulerJS ]);
    return this;
  }
  
  Euler setFromRotationMatrix(Matrix4 matrix, String order)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromRotationMatrix", [ matrixJS, order ]);
    return this;
  }
  
  Euler setFromQuaternion(Quaternion quaternion, String order)
  {
    JsObject quaternionJS = quaternion._obj;
    _obj.callMethod("setFromQuaternion", [ quaternionJS ]);
    return this;
  }
  
  Euler reoder(String newOrder)
  {
    _obj.callMethod("reorder", [ newOrder ]);
    return this;
  }
  
  Euler fromArray(List array)
  {
    _obj.callMethod("fromArray", [ new JsObject.jsify(array) ]);
    return this;
  }
  
  List toArray() => [ _obj["x"], _obj["y"], _obj["z"], _obj["order"] ];
  
  bool equals(Euler euler)
  {
    JsObject eulerJS = euler._obj;
    return _obj.callMethod("equals", [ eulerJS ]);
  }
  
  Euler clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Euler clone = new Euler.fromJsObject(cloned);
    return clone;
  }
}