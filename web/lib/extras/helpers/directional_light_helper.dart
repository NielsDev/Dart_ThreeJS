part of ThreeJSWrapper;

class DirectionalLightHelper extends Object3D
{
  DirectionalLightHelper(DirectionalLight light, [num size])
  {
    if(size == null)
      _obj = new JsObject(context["THREE"]["DirectionalLightHelper"], [ light._obj ]);
    else
      _obj = new JsObject(context["THREE"]["DirectionalLightHelper"], [ light._obj, size ]);
  }
  
  DirectionalLightHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Mesh get lightSphere => ThreeBase._fromCache(this, Mesh, "lightSphere");
  void set lightSphere(Mesh lightSphere)
  {
    _obj["lightSphere"] = lightSphere._obj;
    _cache["lightSphere"] = lightSphere;
  }
  
  DirectionalLight get light => ThreeBase._fromCache(this, DirectionalLight, "light");
  void set light(DirectionalLight light)
  {
    _obj["light"] = light._obj;
    _cache["light"] = light;
  }
  
  Line get targetLine => ThreeBase._fromCache(this, Line, "targetLine");
  void set targetLine(Line targetLine)
  {
    _obj["targetLine"] = targetLine._obj;
    _cache["targetLine"] = targetLine;
  }
  
  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
  
  void dispose() => _obj.callMethod("dispose");
}