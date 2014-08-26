part of ThreeJSWrapper;

class PointCloud extends Object3D
{
  PointCloud(Geometry geometry, [Material material])
  {
    if(material != null)
      _obj = new JsObject(context["THREE"]["PointCloud"], [ geometry._obj, material._obj ]);
    else
      _obj = new JsObject(context["THREE"]["PointCloud"], [ geometry._obj ]);
  }
  
  PointCloud.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Geometry get geometry => ThreeBase._fromCache(this, Geometry, "geometry");
  void set geometry(Geometry geometry)
  {
    _obj["geometry"] = geometry._obj;
    _cache["geometry"] = geometry;
  }
  
  Material get material => ThreeBase._fromCache(this, Material, "material");
  void set material(Material material)
  {
    _obj["material"] = material._obj;
    _cache["material"] = material;
  }
  
  bool get frustumCulled => _obj["frustumCulled"];
  void set frustumCulled(bool frustumCulled)
  {
    _obj["frustumCulled"] = frustumCulled;
  }
  
  bool get sortParticles => _obj["sortParticles"];
  void set sortParticles(bool sortParticles)
  {
    _obj["sortParticles"] = sortParticles;
  }
  
  
  // == METHODS ==
  
  
  PointCloud clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    PointCloud clone = new PointCloud.fromJsObject(cloned);
    return clone;
  }
}