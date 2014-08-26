part of ThreeJSWrapper;

class Sprite extends Object3D
{
  Sprite(Material material)
  {
    _obj = new JsObject(context["THREE"]["Sprite"], [ material._obj ]);
  }
  
  Sprite.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Material get material => ThreeBase._fromCache(this, Material, "material");
  void set material(Material material)
  {
    _obj["material"] = material._obj;
  }
  
  
  // == METHODS ==
  
  
  Sprite clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Sprite clone = new Sprite.fromJsObject(cloned);
    return clone;
  }
}