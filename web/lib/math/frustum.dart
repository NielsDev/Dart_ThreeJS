part of ThreeJSWrapper;

class Frustum extends ThreeBase
{
  Frustum(Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5)
  {
    _obj = new JsObject(context["THREE"]["Frustum"], [ p0._obj, p1._obj, p2._obj, p3._obj, p4._obj, p4._obj ]);
  }
  
  Frustum.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<Plane> get planes
  {
    List<JsObject> list = _obj["planes"];
    List<Plane> planeList = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      planeList.add(new Plane.fromJsObject(list[i]));
    
    return planeList;
  }
  void set planes(List<Plane> planes)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = planes.length; i < l; i++)
      list.add(planes[i]._obj);
    
    _obj["planes"] = new JsObject.jsify(list);
  }
  
  
  // == METHODS ==
  
  
  Frustum setFromMatrix(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("setFromMatrix", [ matrixJS ]);
    return this;
  }
  
  bool intersectsObject(Object3D object)
  {
    JsObject objectJS = object._obj;
    return _obj.callMethod("intersectsObject", [ objectJS ]);
  }
  
  Frustum clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Frustum clone = new Frustum.fromJsObject(cloned);
    return clone;
  }
  
  bool set(Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5)
  {
    JsObject p0JS = p0._obj;
    JsObject p1JS = p1._obj;
    JsObject p2JS = p2._obj;
    JsObject p3JS = p3._obj;
    JsObject p4JS = p4._obj;
    JsObject p5JS = p5._obj;
    return _obj.callMethod("set", [ p0JS, p1JS, p2JS, p3JS, p4JS, p5JS ]);
  }
  
  Frustum copy(Frustum frustum)
  {
    JsObject frustumJS = frustum._obj;
    _obj.callMethod("copy", [ frustumJS ]);
    return this;
  }
  
  bool containsPoint(Vector3 point)
  {
    JsObject pointJS = point._obj;
    return _obj.callMethod("containsPoint", [ pointJS ]);
  }
  
  bool intersectsSphere(Sphere sphere)
  {
    JsObject sphereJS = sphere._obj;
    return _obj.callMethod("intersectsSphere", [ sphereJS ]);
  }
}