part of ThreeJSWrapper;

class Mesh extends Object3D
{
  Mesh([Geometry geometry, Material material])
  {
    if(material == null)
      _obj = new JsObject(context["THREE"]["Mesh"], [ geometry._obj ]);
    else
      _obj = new JsObject(context["THREE"]["Mesh"], [ geometry._obj, material._obj ]);
  }
  
  Mesh.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Geometry get geometry => new Geometry.fromJsObject(_obj["geometry"]);
  void set geometry(Geometry geometry)
  {
    _obj["geometry"] = geometry._obj;
  }
  
  Material get material => new Material.fromJsObject(_obj["material"]);
  void set material(Material material)
  {
    _obj["material"] = material._obj;
  }
  
  
  // == METHODS ==
  
  
  int getMorphTargetIndexByName(String name) => _obj.callMethod("getMorphTargetIndexByName", [ name ]);
  
  void updateMorphTargets() => _obj.callMethod("updateMorphTargets");
}