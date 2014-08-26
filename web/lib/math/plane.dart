part of ThreeJSWrapper;

class Plane extends ThreeBase
{
  Plane(Vector3 normal, num constant)
  {
    _obj = new JsObject(context["THREE"]["Plane"], [ normal._obj, constant ]);
  }
  
  Plane.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get normal => ThreeBase._fromCache(this, Vector3, "normal");
  void set normal(Vector3 normal)
  {
    _obj["normal"] = normal._obj;
  }
  
  num get constant => _obj["constant"];
  void set constant(num constant)
  {
    _obj["constant"] = constant;
  }
  
  
  // == METHODS ==
  
  
  Plane normalize()
  {
    _obj.callMethod("normalize");
    return this;
  }
  
  Plane copy(Plane plane)
  {
    JsObject planeJS = plane._obj;
    _obj.callMethod("copy", [ planeJS ]);
    return this;
  }
  
  Plane applyMatrix4(Matrix4 matrix, [Matrix3 optionalNormalMatrix])
  {
    JsObject matrixJS = matrix._obj;
    
    if(optionalNormalMatrix == null)
    {
      _obj.callMethod("applyMatrix4", [ matrixJS ]);
    }
    else
    {
      JsObject optionalNormalMatrixJS = optionalNormalMatrix._obj;
      _obj.callMethod("applyMatrix4", [ matrixJS, optionalNormalMatrixJS ]);
    }
    
    return this;
  }
  
  Vector3 orthoPoint(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("orthoPoint", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("orthoPoint", [ pointJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  bool isIntersectionLine(Line3 line)
  {
    JsObject lineJS = line._obj;
    return _obj.callMethod("isIntersectionLine", [ lineJS ]);
  }
  
  Vector3 intersectLine(Line3 line, [Vector3 optionalTarget])
  {
    JsObject lineJS = line._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("intersectLine", [ lineJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("intersectLine", [ lineJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Plane setFromNormalAndCoplanarPoint(Vector3 normal, Vector3 point)
  {
    JsObject normalJS = normal._obj;
    JsObject pointJS = point._obj;
    _obj.callMethod("setFromNormalAndCoplanarPoint", [ normalJS, pointJS ]);
    return this;
  }
  
  Plane clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Plane clone = new Plane.fromJsObject(cloned);
    return clone;
  }
  
  num distanceToPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("distanceToPoint", [ pointJS ]);
  }
  
  bool equals(Plane plane)
  {
    JsObject planeJS = plane._obj;
    return _obj.callMethod("equals", [ planeJS ]);
  }
  
  Plane setComponents(num x, num y, num z, num w)
  {
    _obj.callMethod("setComponents", [ x, y, z, w ]);
    return this;
  }
  
  num distanceToSphere(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    return _obj.callMethod("distanceToSphere", [ sphereJS ]);
  }
  
  Plane setFromCoplanarPoints(Vector3 a, Vector3 b, Vector3 c)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    JsObject cJS = c._obj;
    _obj.callMethod("setFromCoplanarPoints", [ aJS, bJS, cJS ]);
    return this;
  }
  
  Vector3 projectPoint(Vector3 point, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("projectPoint", [ pointJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("projectPoint", [ pointJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Plane negate()
  {
    _obj.callMethod("negate");
    return this;
  }
  
  Plane translate(num offset)
  {
    _obj.callMethod("translate", [ offset ]);
    return this;
  }
  
  Vector3 coplanarPoint([Vector3 optionalTarget])
  {
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("coplanarPoint", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("coplanarPoint", [ optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
}