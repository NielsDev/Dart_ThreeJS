part of ThreeJSWrapper;

class SpotLightHelper extends Object3D
{
  SpotLightHelper(SpotLight light, num sphereSize)
  {
    _obj = new JsObject(context["THREE"]["SpotLightHelper"], [ light._obj, sphereSize ]);
  }
  
  SpotLightHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Mesh get lightSphere => ThreeBase._fromCache(this, Mesh, "lightSphere");
  void set lightSphere(Mesh lightSphere)
  {
    _obj["lightSphere"] = lightSphere._obj;
    _cache["lightSphere"] = lightSphere;
  }
  
  SpotLight get light => ThreeBase._fromCache(this, SpotLight, "light");
  void set light(SpotLight light)
  {
    _obj["light"] = light._obj;
    _cache["light"] = light;
  }

  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}