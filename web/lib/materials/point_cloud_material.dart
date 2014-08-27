part of ThreeJSWrapper;

class PointCloudMaterial extends Material
{
  PointCloudMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["PointCloudMaterial"]);
    }
    else
    {
      if(parameters["envMap"] != null)  parameters["envMap"] = parameters["envMap"]._obj;
      if(parameters["map"] != null)     parameters["map"] = parameters["map"]._obj;
      
      _obj = new JsObject(context["THREE"]["PointCloudMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  PointCloudMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get color => _obj["color"];
  void set color(int color)
  {
    _obj["color"] = color;
  }
  
  Texture get map => ThreeBase._fromCache(this, Texture, "map");
  void set map(Texture map)
  {
    _obj["map"] = map._obj;
    _cache["map"] = map;
  }
  
  num get size => _obj["size"];
  void set size(num size)
  {
    _obj["size"] = size;
  }

  bool get sizeAttenuation => _obj["sizeAttenuation"];
  void set sizeAttenuation(bool sizeAttenuation)
  {
    _obj["sizeAttenuation"] = sizeAttenuation;
  }

  bool get vertexColors => _obj["vertexColors"];
  void set vertexColors(bool vertexColors)
  {
    _obj["vertexColors"] = vertexColors;
  }
  
  bool get fog => _obj["fog"];
  void set fog(bool fog)
  {
    _obj["fog"] = fog;
  }
  
  
  // == METHODS ==
  
  
  PointCloudMaterial clone([PointCloudMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    PointCloudMaterial clone = new PointCloudMaterial.fromJsObject(cloned);
    return clone;
  }
}