part of ThreeJSWrapper;

class BoundingBoxHelper extends Mesh
{
  BoundingBoxHelper(Object3D object, [int hex])
  {
    if(hex == null)
      _obj = new JsObject(context["THREE"]["BoundingBoxHelper"], [ object._obj ]);
    else
      _obj = new JsObject(context["THREE"]["BoundingBoxHelper"], [ object._obj, hex ]);
  }
  
  BoundingBoxHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Object3D get object => ThreeBase._fromCache(this, Object3D, "object");
  void set object(Object3D object)
  {
    _obj["object"] = object._obj;
    _cache["object"] = object;
  }
  
  Box3 get box => ThreeBase._fromCache(this, Box3, "box");
  void set box(Box3 box)
  {
    _obj["box"] = box._obj;
    _cache["box"] = box;
  }
  
  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}