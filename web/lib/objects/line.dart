part of ThreeJSWrapper;

class Line extends Object3D
{
  Line(Geometry geometry, [Material material, int type])
  {
    List args = [ geometry._obj ];
    if(material != null)
      args.add(material._obj);
    
    if(type != null)
      args.add(type);
    
    _obj = new JsObject(context["THREE"]["Line"], args);
  }
  
  Line.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Geometry get geometry => ThreeBase._fromCache(this, Geometry, "geometry");
  void set geometry(Geometry geometry)
  {
    _obj["geometry"] = geometry._obj;
  }
  
  Material get material => ThreeBase._fromCache(this, Material, "material");
  void set material(Material material)
  {
    _obj["material"] = material._obj;
  }
  
  int get type => _obj["type"];
  void set type(int type)
  {
    _obj["type"] = type;
  }
}