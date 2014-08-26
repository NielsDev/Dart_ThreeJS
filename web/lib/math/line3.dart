part of ThreeJSWrapper;

class Line3 extends ThreeBase
{
  Line3(Vector3 start, Vector3 end)
  {
    _obj = new JsObject(context["THREE"]["Line3"], [ start._obj, end._obj ]);
  }
  
  Line3.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get start => ThreeBase._fromCache(this, Vector3, "start");
  void set start(Vector3 start)
  {
    _obj["start"] = start._obj;
    _cache["start"] = start;
  }
  
  Vector3 get end => ThreeBase._fromCache(this, Vector3, "end");
  void set end(Vector3 end)
  {
    _obj["end"] = end._obj;
    _cache["end"] = end;
  }
  
  
  // == METHODS ==
  
  
  Line3 set(Vector3 start, Vector3 end)
  {
    JsObject startJS = start._obj;
    JsObject endJS = end._obj;
    _obj.callMethod("start", [ startJS, endJS ]);
    return this;
  }
  
  Line3 copy(Line3 line)
  {
    JsObject lineJS = line._obj;
    _obj.callMethod("copy", [ lineJS ]);
    return this;
  }
  
  Line3 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Line3 clone = new Line3.fromJsObject(cloned);
    return clone;
  }
  
  bool equals(Line3 line)
  {
    JsObject lineJS = line._obj;
    return _obj.callMethod("equals", [ lineJS ]);
  }
  
  num distance() => _obj.callMethod("distance");
  
  num distanceSq() => _obj.callMethod("distanceSq");
  
  Line3 applyMatrix4(Matrix4 matrix)
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
  
  Vector3 delta([Vector3 optionalTarget])
  {
    JsObject vector3JS;
    
    if(optionalTarget == null)
    {
      vector3JS = _obj.callMethod("delta", []);
    }
    else
    {
      JsObject optionalTargetJS = optionalTarget._obj;
      vector3JS = _obj.callMethod("delta", [ optionalTargetJS ]);
    }
    
    Vector3 vector3 = new Vector3.fromJsObject(vector3JS);
    return vector3;
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
  
  num closestPointToPointParameter(Vector3 point, bool clampToLine)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("closestPointToPointParameter", [ pointJS, clampToLine ]);
  }
}