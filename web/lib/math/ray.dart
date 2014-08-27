part of ThreeJSWrapper;

class Ray extends ThreeObject
{
  Ray(Vector3 origin, Vector3 direction)
  {
    _obj = new JsObject(context["THREE"]["Ray"], [ origin._obj, direction._obj ]);
  }
  
  Ray.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get origin => ThreeBase._fromCache(this, Vector3, "origin");
  void set origin(Vector3 origin)
  {
    _obj["origin"] = origin._obj;
    _cache["origin"] = origin;
  }
  
  Vector3 get direction => ThreeBase._fromCache(this, Vector3, "direction");
  void set direction(Vector3 direction)
  {
    _obj["direction"] = direction._obj;
    _cache["direction"] = direction;
  }
  
  
  // == METHODS ==
  
  
  Ray applyMatrix4(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("applyMatrix4", [ matrixJS ]);
    return this;
  }
  
  Vector3 at(num t, [Vector3 optionalTarget])
  {
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("at", [ t ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("at", [ t, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Ray clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Ray clone = new Ray.fromJsObject(cloned);
    return clone;
  }
  
  Vector3 closestPointToPoint(Vector3 point, bool clampToLine, [Vector3 optionalTarget])
  {
    JsObject pointJS = point._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("closestPointToPoint", [ pointJS, clampToLine ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("closestPointToPoint", [ pointJS, clampToLine, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Ray copy(Ray ray)
  {
    JsObject rayJS = ray._obj;
    _obj.callMethod("copy", [ rayJS ]);
    return this;
  }
  
  num distanceSqToSegment(Vector3 v0, Vector3 v1, [Vector3 optionalPointOnRay, Vector3 optionalPointOnSegment])
  {
    JsObject v0JS = v0._obj;
    JsObject v1JS = v1._obj;
    
    List<JsObject> args = [ v0JS, v1JS ];
    if(optionalPointOnRay != null)
      args.add(optionalPointOnRay._obj);
    
    if(optionalPointOnSegment != null)
      args.add(optionalPointOnSegment._obj);
    
    return _obj.callMethod("distanceSqToSegment", args);
  }
  
  num distanceToPlane(Plane plane)
  {
    JsObject planeJS = plane._obj;
    return _obj.callMethod("distanceToPlane", [ planeJS ]);
  }
  
  num distanceToPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("distanceToPoint", [ pointJS ]);
  }
  
  bool equals(Ray ray)
  {
    JsObject rayJS = ray._obj;
    return _obj.callMethod("equals", [ rayJS ]);
  }
  
  Vector3 intersectBox(Box3 box, [Vector3 optionalTarget])
  {
    JsObject boxJS = box._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("intersectBox", [ boxJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("intersectBox", [ boxJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Vector3 intersectPlane(Plane plane, [Vector3 optionalTarget])
  {
    JsObject planeJS = plane._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("intersectPlane", [ planeJS ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("intersectPlane", [ planeJS, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  Vector3 intersectTriangle(Vector3 a, Vector3 b, Vector3 c, bool backfaceCulling, [Vector3 optionalTarget])
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    JsObject cJS = c._obj;
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("intersectTriangle", [ aJS, bJS, cJS, backfaceCulling ]);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("intersectTriangle", [ aJS, bJS, cJS, backfaceCulling, optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
  }
  
  bool isIntersectionBox(Box3 box)
  {
    JsObject boxJS = box._obj;
    return _obj.callMethod("isIntersectionBox", [ boxJS ]);
  }
  
  bool isIntersectionPlane(Plane plane)
  {
    JsObject planeJS = plane._obj;
    return _obj.callMethod("isIntersectionPlane", [ planeJS ]);
  }
  
  bool isIntersectionSphere(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    return _obj.callMethod("isIntersectionSphere", [ sphereJS ]);
  }
  
  Ray recast(num t)
  {
    _obj.callMethod("recast", [ t ]);
    return this;
  }
  
  Ray set(Vector3 origin, Vector3 direction)
  {
    JsObject originJS = origin._obj;
    JsObject directionJS = direction._obj;
    _obj.callMethod("set", [ originJS, directionJS ]);
    return this;
  }
}