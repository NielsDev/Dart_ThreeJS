part of ThreeJSWrapper;

class Box3 extends ThreeBase
{
  Box2(Vector3 min, Vector3 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj = new JsObject(context["THREE"]["Box3"], [ minJS, maxJS ]);
  }
  
  Box3.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get min => ThreeBase._fromCache(this, Vector3, "min");
  void set min(Vector3 min)
  {
    JsObject minJS = min._obj;
    _obj["min"] = minJS;
  }
  
  Vector3 get max => ThreeBase._fromCache(this, Vector3, "max");
  void set max(Vector3 max)
  {
    JsObject maxJS = max._obj;
    _obj["max"] = maxJS;
  }
  
  
  // == METHODS ==
  
  
  Box3 set(Vector2 min, Vector2 max)
  {
    JsObject minJS = min._obj;
    JsObject maxJS = max._obj;
    _obj.callMethod("set", [ minJS, maxJS ]);
    return this;
  }
  
  Box3 applyMatrix4(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix4", [ matrixJS ]);
    return this;
  }
  
  Box3 expandByPoint(Vector2 point)
  {
    JsObject pointJS = point._obj;
    _obj.callMethod("expandByPoint", [ pointJS ]);
    return this;
  }
  
  Vector3 clampPoint(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject vector3JS;
    JsObject pointJS = point._obj;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("clampPoint", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("clampPoint", [ pointJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  bool isIntersectionBox(Box3 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("isIntersectionBox", [ boxJS ]);
  }
  
  Box3 setFromPoints(List<Vector3> points)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = points.length; i < l; i++)
    {
      list.add(points[i]._obj);
    }
    
    _obj.callMethod("setFromPoints", [ new JsObject.jsify(list) ]);
    
    return this;
  }
  
  Box3 setFromObject(Object3D object)
  {
    JsObject objectJS = object._obj;
    _obj.callMethod("setFromObject", [ objectJS ]);
    return this;
  }
  
  Vector3 size([Vector3 optionalTarget])
  {
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("size", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("size", [ optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Box3 union(Box3 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("union", [ boxJS ]);
    return this;
  }
  
  Vector3 getParameter(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("getParameter", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("getParameter", [ pointJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Box3 expandByScalar(num scalar)
  {
    _obj.callMethod("expandByScalar", [ scalar ]);
    return this;
  }
  
  Box3 intersect(Box3 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("intersect", [ boxJS ]);
    return this;
  }
  
  bool containsBox(Box3 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("containsBox", [ boxJS ]);
  }
  
  Box3 translate(Vector2 offset)
  {
    JsObject offsetJS = offset._obj;
    _obj.callMethod("translate", [ offsetJS ]);
    return this;
  }
  
  bool empty() => _obj.callMethod("empty");
  
  Box3 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Box3 clone = new Box3.fromJsObject(cloned);
    return clone;
  }
  
  bool equals(Box3 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("equals", [ boxJS ]);
  }
  
  Box3 expandByVector(Vector2 vector)
  {
    JsObject vectorJS = vector._obj;
    _obj.callMethod("expandByVector", [ vectorJS ]);
    return this;
  }
  
  Box3 copy(Box3 box)
  {
    JsObject boxJS = box._obj;
    _obj.callMethod("copy", [ boxJS ]);
    return this;
  }
  
  Box3 makeEmpty()
  {
    _obj.callMethod("makeEmpty");
    return this;
  }
  
  Vector3 center([Vector3 optionalTarget])
  {
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("center", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("center", [ optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Sphere getBoundingSphere([Sphere optionalTarget])
  {
    JsObject sphereJS;
    
    if(optionalTarget == null)
    {
      sphereJS = _obj.callMethod("getBoundingSphere", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      sphereJS = _obj.callMethod("getBoundingSphere", [ optionalTargetJS ]);
    }
    
    Sphere sphere = new Sphere.fromJsObject(sphereJS);
    return sphere;
  }
  
  num distanceToPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("distanceToPoint", [ pointJS ]);
  }
  
  Box3 setFromCenterAndSize(Vector3 center, Vector3 size)
  {
    JsObject centerJS = center._obj;
    JsObject sizeJS = size._obj;
    _obj.callMethod("setFromCenterAndSize", [ centerJS, sizeJS ]);
    return this;
  }
}