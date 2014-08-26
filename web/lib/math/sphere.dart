part of ThreeJSWrapper;

class Sphere extends ThreeBase
{
  Sphere(Vector3 center, num radius)
  {
    _obj = new JsObject(context["THREE"]["Sphere"], [ center._obj, radius ]);
  }
  
  Sphere.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get center => ThreeBase._fromCache(this, Vector3, "center");
  void set center(Vector3 center)
  {
    JsObject centerJS = center._obj;
    _obj["center"] = centerJS;
  }
  
  num get radius => _obj["radius"];
  void set radius(num radius)
  {
    _obj["radius"] = radius;
  }
  
  
  // == METHODS ==
  
  
  Sphere set(Vector3 center, num radius)
  {
    JsObject centerJS = center._obj;
    _obj.callMethod("set", [ centerJS, radius ]);
    return this;
  }
  
  Sphere applyMatrix4(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix4", [ matrixJS ]);
    return this;
  }
  
  Vector3 clampPoint(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector3JS;
    
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
  
  Sphere translate(num offset)
  {
    _obj.callMethod("translate", [ offset ]);
    return this;
  }
  
  bool equals(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    return _obj.callMethod("equals", [ sphereJS ]);
  }
  
  Sphere setFromPoints(List<Vector3> points)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = points.length; i < l; i++)
    {
      list.add(points[i]._obj);
    }
    
    _obj.callMethod("setFromPoints", [ new JsObject.jsify(list) ]);
    
    return this;
  }
  
  Box3 getBoundingBox([Sphere optionalTarget])
  {
    JsObject boxJS;
    
    if(optionalTarget == null)
    {
      boxJS = _obj.callMethod("getBoundingBox", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      boxJS = _obj.callMethod("getBoundingBox", [ optionalTargetJS ]);
    }
    
    Box3 box = new Box3.fromJsObject(boxJS);
    return box;
  }
  
  bool containsPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("containsPoint", [ pointJS ]);
  }
  
  Sphere copy(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    _obj.callMethod("copy", [ sphereJS ]);
    return this;
  }
  
  bool intersectsSphere(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    return _obj.callMethod("intersectsSphere", [ sphereJS ]);
  }
  
  bool empty() => _obj.callMethod("empty");
}