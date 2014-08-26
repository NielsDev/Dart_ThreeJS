part of ThreeJSWrapper;

class Triangle extends ThreeBase
{
  Triangle(Vector3 a, Vector3 b, Vector3 c)
  {
    _obj = new JsObject(context["THREE"]["Triangle"], [ a._obj, b._obj, c._obj ]);
  }
  
  Triangle.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get a => ThreeBase._fromCache(this, Vector3, "a");
  void set a(Vector3 a)
  {
    JsObject aJS = a._obj;
    _obj["a"] = aJS;
  }
  
  Vector3 get b => ThreeBase._fromCache(this, Vector3, "b");
  void set b(Vector3 b)
  {
    JsObject bJS = b._obj;
    _obj["b"] = bJS;
  }
    
  Vector3 get c => ThreeBase._fromCache(this, Vector3, "c");
  void set c(Vector3 c)
  {
    JsObject cJS = c._obj;
    _obj["c"] = cJS;
  }
  
  
  // == METHODS ==
  Triangle setFromPointsAndIndices(List<Vector3> points, int i0, int i1, int i2)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = points.length; i < l; i++)
      list.add(points[i]._obj);
    
    _obj.callMethod("setFromPointsAndIndices", [ new JsObject.jsify(list), i0, i1, i2 ]);
    return this;
  }
  
  Triangle set(Vector3 a, Vector3 b, Vector3 c)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    JsObject cJS = c._obj;
    
    _obj.callMethod("set", [ aJS, bJS, cJS ]);
    return this;
  }
  
  Vector3 normal([Vector3 optionalTarget])
  {
    JsObject calculatedNormalJS;
    
    if(optionalTarget == null)
    {
      calculatedNormalJS = _obj.callMethod("normal", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      calculatedNormalJS = _obj.callMethod("normal", [ optionalTargetJS ]);
    }
    
    Vector3 calculatedNormal = new Vector3.fromJsObject(calculatedNormalJS);
    return calculatedNormal;
  }
  
  Vector3 barycoordFromPoint(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject calculatedCoordJS;
    
    if(optionalTarget == null)
    {
      calculatedCoordJS = _obj.callMethod("barycoordFromPoint", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      calculatedCoordJS = _obj.callMethod("barycoordFromPoint", [ pointJS, optionalTargetJS ]);
    }
    
    Vector3 calculatedCoord = new Vector3.fromJsObject(calculatedCoordJS);
    return calculatedCoord;
  }
  
  Triangle clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Triangle clone = new Triangle.fromJsObject(cloned);
    return clone;
  }
  
  num area() => _obj.callMethod("area");
  
  Vector3 midpoint([Vector3 optionalTarget])
  {
    JsObject midPointJS;
    
    if(optionalTarget == null)
    {
      midPointJS = _obj.callMethod("midpoint", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      midPointJS = _obj.callMethod("midpoint", [ optionalTargetJS ]);
    }
    
    Vector3 midPoint = new Vector3.fromJsObject(midPointJS);
    return midPoint;
  }
  
  bool equals(Triangle triangle)
  {
    JsObject triangleJS = triangle._obj;
    return _obj.callMethod("equals", [ triangleJS ]);
  }
  
  Plane plane([Vector3 optionalTarget])
  {
    JsObject planeJS;
    
    if(optionalTarget == null)
    {
      planeJS = _obj.callMethod("plane", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      planeJS = _obj.callMethod("plane", [ optionalTargetJS ]);
    }
    
    Plane plane = new Plane.fromJsObject(planeJS);
    return plane;
  }
  
  bool containsPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("containsPoint", [ pointJS ]);
  }
  
  Triangle copy(Triangle triangle)
  {
    JsObject triangleJS = triangle._obj;
    _obj.callMethod("copy", [ triangleJS ]);
    return this;
  }
}