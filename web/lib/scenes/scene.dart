part of ThreeJSWrapper;

class Scene extends Object3D
{
  AbstractFog _fog;
  
  Scene()
  {
    _obj = new JsObject(context["THREE"]["Scene"]);
  }
  
  Scene.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  // We need to keep this reference because if we use new Fog.fromJsObject
  // there will be a problem because when it's not of the type Fog
  // That will cause the instance to have a wrong link
  // eg.: instance = FogExp2 but is instantiated as Fog, this will cause trouble
  AbstractFog get fog
  {
    return _fog;
  }
  void set fog(AbstractFog fog)
  {
    _fog = fog;
    _obj["fog"] = (fog == null) ? null : fog._obj;
  }
  
  Material get overrideMaterial
  {
    if(_obj["overrideMaterial"] == null)
      return null;
    
    return new Material.fromJsObject(_obj["overrideMaterial"]);
  }
  void set overrideMaterial(Material overrideMaterial)
  {
    _obj["overrideMaterial"] = (overrideMaterial == null) ? null : overrideMaterial._obj;
  }
  
  bool get autoUpdate => _obj["autoUpdate"];
  void set autoUpdate(bool autoUpdate)
  {
    _obj["autoUpdate"] = autoUpdate;
  }
}