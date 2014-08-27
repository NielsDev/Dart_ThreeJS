part of ThreeJSWrapper;

class Box2 extends ThreeObject
{
  Box2(Vector2 min, Vector2 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj = new JsObject(context["THREE"]["Box2"], [ minJS, maxJS ]);
  }
  
  Box2.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector2 get min => ThreeBase._fromCache(this, Vector2, "min");
  void set min(Vector2 min)
  {
    _obj["min"] = min._obj;
    _cache["min"] = min;
  }
  
  Vector2 get max => ThreeBase._fromCache(this, Vector2, "max");
  void set max(Vector2 max)
  {
    _obj["max"] = max._obj;
    _cache["max"] = max;
  }
  
  
  // == METHODS ==
  
  
  Box2 set(Vector2 min, Vector2 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj.callMethod("set", [ minJS, maxJS ]);
    return this;
  }
  
  Box2 expandByPoint(Vector2 point)
  {
    JsObject pointJS = point._obj;
    _obj.callMethod("expandByPoint", [ pointJS ]);
    return this;
  }
  
  Vector2 clampPoint(Vector2 point, [Vector2 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector2JS;
    
    if(optionalTarget == null)
    {
      vector2JS = _obj.callMethod("clampPoint", [ pointJS ]); 
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector2JS = _obj.callMethod("clampPoint", [ pointJS, optionalTargetJS ]);
    }
    
    Vector2 vector2 = new Vector2.fromJsObject(vector2JS);
    return vector2;
  }
  
  bool isIntersectionBox(Box2 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("isIntersectionBox", [ boxJS ]);
  }
  
  Box2 setFromPoints(List<Vector2> points)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = points.length; i < l; i++)
    {
      list.add(points[i]._obj);
    }
    
    _obj.callMethod("setFromPoints", [ new JsObject.jsify(list) ]);
    
    return this;
  }
  
  Vector2 size([Vector2 optionalTarget])
  {
    JsObject vector2JS;
    
    if(optionalTarget == null)
    {
      vector2JS = _obj.callMethod("size", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector2JS = _obj.callMethod("size", [ optionalTargetJS ]);
    }
    
    Vector2 vector2 = new Vector2.fromJsObject(vector2JS);
    return vector2;
  }
  
  Box2 union(Box2 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("union", [ boxJS ]);
    return this;
  }
  
  Vector2 getParameter(Vector2 point, [Vector2 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector2JS;
    
    if(optionalTarget == null)
    {
      vector2JS = _obj.callMethod("getParameter", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector2JS = _obj.callMethod("getParameter", [ pointJS, optionalTargetJS ]);
    }
    
    Vector2 vector2 = new Vector2.fromJsObject(vector2JS);
    return vector2;
  }
  
  Box2 expandByScalar(num scalar)
  {
    _obj.callMethod("expandByScalar", [ scalar ]);
    return this;
  }
  
  Box2 intersect(Box2 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("intersect", [ boxJS ]);
    return this;
  }
  
  bool containsBox(Box2 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("containsBox", [ boxJS ]);
  }
  
  Box2 translate(Vector2 offset)
  {
    JsObject offsetJS = offset._obj;
    _obj.callMethod("translate", [ offsetJS ]);
    return this;
  }
  
  bool empty() => _obj.callMethod("empty");
  
  Box2 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Box2 clone = new Box2.fromJsObject(cloned);
    return clone;
  }
  
  bool equals(Box2 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("equals", [ boxJS ]);
  }
  
  Box2 expandByVector(Vector2 vector)
  {
    JsObject vectorJS = vector._obj;
    _obj.callMethod("expandByVector", [ vectorJS ]);
    return this;
  }
  
  Box2 copy(Box2 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("copy", [ boxJS ]);
    return this;
  }
  
  Box2 makeEmpty()
  {
    _obj.callMethod("makeEmpty");
    return this;
  }
  
  Vector2 center([Vector2 optionalTarget])
  {
    JsObject vector2JS;

    if(optionalTarget == null)
    {
      vector2JS = _obj.callMethod("center", []); 
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector2JS = _obj.callMethod("center", [ optionalTargetJS ]);
    }
    
    Vector2 vector2 = new Vector2.fromJsObject(vector2JS);
    
    return vector2;
  }
  
  num distanceToPoint(Vector2 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("distanceToPoint", [ pointJS ]);
  }
  
  Box2 setFromCenterAndSize(Vector2 center, Vector2 size)
  {
    JsObject centerJS = center._obj;
    JsObject sizeJS = size._obj;
    _obj.callMethod("setFromCenterAndSize", [ centerJS, sizeJS ]);
    return this;
  }
}