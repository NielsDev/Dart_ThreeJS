part of ThreeJSWrapper;

class HemisphereLightHelper extends Object3D
{
  HemisphereLightHelper(HemisphereLight light, num sphereSize, num arrowLength, num domeSize)
  {
    _obj = new JsObject(context["THREE"]["HemisphereLightHelper"], [ light._obj, sphereSize, arrowLength, domeSize ]);
  }
  
  HemisphereLightHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Mesh get lightSphere => ThreeBase._fromCache(this, Mesh, "lightSphere");
  void set lightSphere(Mesh lightSphere)
  {
    _obj["lightSphere"] = lightSphere._obj;
    _cache["lightSphere"] = lightSphere;
  }
  
  HemisphereLight get light => ThreeBase._fromCache(this, HemisphereLight, "light");
  void set light(HemisphereLight light)
  {
    _obj["light"] = light._obj;
    _cache["light"] = light;
  }

  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}