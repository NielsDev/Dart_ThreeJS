part of ThreeJSWrapper;

class Raycaster extends ThreeBase
{
  Raycaster(Vector3 origin, Vector3 direction, num near, num far)
  {
    JsObject originJS = origin._obj;
    JsObject directionJS = direction._obj;
    _obj = new JsObject(context["THREE"]["Raycaster"], [ originJS, directionJS, near, far ]);
  }
  
  Raycaster.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Ray get ray => ThreeBase._fromCache(this, Ray, "ray");
  void set ray(Ray ray)
  {
    _obj["ray"] = ray._obj;
    _cache["ray"] = ray;
  }
  
  num get near => _obj["near"];
  void set near(num near)
  {
    _obj["near"] = near;
  }
  
  num get far => _obj["far"];
  void set far(num far)
  {
    _obj["far"] = far;
  }
  
  num get precision => _obj["precision"];
  void set precision(num precision)
  {
    _obj["precision"] = precision;
  }
  
  
  // == METHODS ==
  
  
  void set(Vector3 origin, Vector3 direction) => _obj.callMethod("set", [ origin._obj, direction._obj ]);
  
  List intersectObject(Object3D object, bool recursive) => _obj.callMethod("intersectObject", [ object._obj, recursive ]);
  
  List intersectObjects(List<Object3D> objects, bool recursive)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = objects.length; i < l; i++)
      list.add(objects[i]._obj);
    
    return _obj.callMethod("intersectObjects", [ new JsObject.jsify(list), recursive ]);
  }
}