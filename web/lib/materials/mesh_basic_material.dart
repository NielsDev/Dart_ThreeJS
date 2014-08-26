part of ThreeJSWrapper;

class MeshBasicMaterial extends Material
{
  MeshBasicMaterial(Map parameters)
  {
    if(parameters["envMap"] != null)
      parameters["envMap"] = parameters["envMap"]._obj;
    
    JsObject parametersJS = new JsObject.jsify(parameters);
    _obj = new JsObject(context["THREE"]["MeshBasicMaterial"], [ parametersJS ]);
  }
  
  MeshBasicMaterial.fromJsObject(obj)
  {
    _obj = obj;
  }
  
  Color get color => ThreeBase._fromCache(this, Color, "color");
  void set color(Color color)
  {
    _obj["color"] = color._obj;
    _cache["color"] = color;
  }
  
  bool get wireframe => _obj["wireframe"];
  void set wireframe(bool wireframe)
  {
    _obj["wireframe"] = wireframe;
  }
  
  num get wireframeLinewidth => _obj["wireframeLinewidth"];
  void set wireframeLinewidth(num wireframeLinewidth)
  {
    _obj["wireframeLinewidth"] = wireframeLinewidth;
  }
  
  String get wireframeLinecap => _obj["wireframeLinecap"];
  void set wireframeLinecap(String wireframeLinecap)
  {
    _obj["wireframeLinecap"] = wireframeLinecap;
  }
  
  String get wireframeLinejoin => _obj["wireframeLinejoin"];
  void set wireframeLinejoin(String wireframeLinejoin)
  {
    _obj["wireframeLinejoin"] = wireframeLinejoin;
  }
  
  int get shading => _obj["shading"];
  void set shading(int shading)
  {
    _obj["shading"] = shading;
  }
  
  int get vertexColors => _obj["vertexColors"];
  void set vertexColors(int vertexColors)
  {
    _obj["vertexColors"] = vertexColors;
  }
  
  bool get fog => _obj["fog"];
  void set fog(bool fog)
  {
    _obj["fog"] = fog;
  }
  
  Texture get lightMap
  {
    JsObject lightMapJS = _obj["lightMap"];
    if(lightMapJS == null)
      return null;
    
    return ThreeBase._fromCacheJS(this, Texture, lightMapJS, "lightMap");
  }
  void set lightMap(Texture lightMap)
  {
    if(lightMap == null)
    {
      _obj["lightMap"] = null;
      return;
    }
    
    _obj["lightMap"] = lightMap._obj;
    _cache["lightMap"] = lightMap;
  }
  
  Texture get specularMap
  {
    JsObject specularMapJS = _obj["specularMap"];
    if(specularMapJS == null)
      return null;
    
    return ThreeBase._fromCacheJS(this, Texture, specularMapJS, "specularMap");
  }
  void set specularMap(Texture specularMap)
  {
    if(specularMap == null)
    {
      _obj["specularMap"] = null;
      return;
    }
    
    _obj["specularMap"] = specularMap._obj;
    _cache["specularMap"] = specularMap;
  }
  
  Texture get alphaMap
  {
    JsObject alphaMapJS = _obj["alphaMap"];
    if(alphaMapJS == null)
      return null;
    
    return ThreeBase._fromCacheJS(this, Texture, alphaMapJS, "alphaMap");
  }
  void set alphaMap(Texture alphaMap)
  {
    if(alphaMap == null)
    {
      _obj["alphaMap"] = null;
      return;
    }
    
    _obj["alphaMap"] = alphaMap._obj;
    _cache["alphaMap"] = alphaMap;
  }
  
  CubeTexture get envMap => ThreeBase._fromCache(this, CubeTexture, "envMap");
  void set envMap(CubeTexture envMap)
  {
    _obj["envMap"] = envMap._obj;
    _cache["envMap"] = envMap;
  }
  
  bool get skinning => _obj["skinning"];
  void set skinning(bool skinning)
  {
    _obj["skinning"] = skinning;
  }
  
  bool get morphTargets => _obj["morphTargets"];
  void set morphTargets(bool morphTargets)
  {
    _obj["morphTargets"] = morphTargets;
  }
  
  Texture get map
  {
    JsObject mapJS = _obj["map"];
    if(mapJS == null)
      return null;
    
    return ThreeBase._fromCacheJS(this, Texture, mapJS, "map");
  }
  void set map(Texture map)
  {
    if(map == null)
    {
      _obj["map"] = null;
      return;
    }
    
    _obj["map"] = map._obj;
    _cache["map"] = map;
  }
  
  int get combine => _obj["combine"];
  void set combine(int combine)
  {
    _obj["combine"] = combine;
  }
  
  num get reflectivity => _obj["reflectivity"];
  void set reflectivity(num reflectivity)
  {
    _obj["reflectivity"] = reflectivity;
  }
  
  num get refractionRatio => _obj["refractionRatio"];
  void set refractionRatio(num refractionRatio)
  {
    _obj["refractionRatio"] = refractionRatio;
  }
  
  
  // == METHODS ==
  
  
  MeshBasicMaterial clone([MeshBasicMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    MeshBasicMaterial clone = new MeshBasicMaterial.fromJsObject(cloned);
    return clone;
  }
}