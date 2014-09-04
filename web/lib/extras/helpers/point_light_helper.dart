part of ThreeJSWrapper;

class PointLightHelper extends Object3D
{
  PointLightHelper(PointLight light, num sphereSize)
  {
    _obj = new JsObject(context["THREE"]["PointLightHelper"], [ light._obj, sphereSize ]);
  }
  
  PointLightHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Mesh get lightSphere => ThreeBase._fromCache(this, Mesh, "lightSphere");
  void set lightSphere(Mesh lightSphere)
  {
    _obj["lightSphere"] = lightSphere._obj;
    _cache["lightSphere"] = lightSphere;
  }
  
  PointLight get light => ThreeBase._fromCache(this, PointLight, "light");
  void set light(PointLight light)
  {
    _obj["light"] = light._obj;
    _cache["light"] = light;
  }

  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}