part of ThreeJSWrapper;

class MeshPhongLambertMaterial extends Material
{
  MeshPhongLambertMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["MeshPhongLambertMaterial"]);
    }
    else
    {
      if(parameters["envMap"] != null)
        parameters["envMap"] = parameters["envMap"]._obj;
      
      _obj = new JsObject(context["THREE"]["MeshPhongLambertMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  MeshPhongLambertMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Color get color => new Color.fromJsObject(_obj["color"]);
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
  
  Color get ambient => new Color.fromJsObject(_obj["ambient"]);
  void set ambient(Color ambient)
  {
    _obj["ambient"] = ambient._obj;
  }
  
  Color get emmisive => new Color.fromJsObject(_obj["emmisive"]);
  void set emmisive(Color emmisive)
  {
    _obj["emmisive"] = emmisive._obj;
  }
  
  Color get specular => new Color.fromJsObject(_obj["specular"]);
  void set specular(Color specular)
  {
    _obj["specular"] = specular._obj;
  }
  
  int get shininess => _obj["shininess"];
  void set shininess(int shininess)
  {
    _obj["shininess"] = shininess;
  }
  
  int get shading => _obj["shading"];
  void set shading(int shading)
  {
    _obj["shading"] = shading;
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
  
  Texture get map
  {
    JsObject mapJS = _obj["map"];
    if(mapJS == null)
      return null;
    
    return new Texture.fromJsObject(mapJS);
  }
  void set map(Texture map)
  {
    if(map == null)
    {
      _obj["map"] = null;
      return;
    }
    
    _obj["map"] = map._obj;
  }
  
  Texture get lightMap
  {
    JsObject lightMapJS = _obj["lightMap"];
    if(lightMapJS == null)
      return null;
    
    return new Texture.fromJsObject(lightMapJS);
  }
  void set lightMap(Texture lightMap)
  {
    if(lightMap == null)
    {
      _obj["lightMap"] = null;
      return;
    }
    
    _obj["lightMap"] = lightMap._obj;
  }
  
  Texture get specularMap
  {
    JsObject specularMapJS = _obj["specularMap"];
    if(specularMapJS == null)
      return null;
    
    return new Texture.fromJsObject(specularMapJS);
  }
  void set specularMap(Texture specularMap)
  {
    if(specularMap == null)
    {
      _obj["specularMap"] = null;
      return;
    }
    
    _obj["specularMap"] = specularMap._obj;
  }
  
  Texture get alphaMap
  {
    JsObject alphaMapJS = _obj["alphaMap"];
    if(alphaMapJS == null)
      return null;
    
    return new Texture.fromJsObject(alphaMapJS);
  }
  void set alphaMap(Texture alphaMap)
  {
    if(alphaMap == null)
    {
      _obj["alphaMap"] = null;
      return;
    }
    
    _obj["alphaMap"] = alphaMap._obj;
  }
  
  CubeTexture get envMap => new CubeTexture.fromJsObject(_obj["envMap"]);
  void set envMap(CubeTexture envMap)
  {
    _obj["envMap"] = envMap._obj;
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
  
  int get combine => _obj["combine"];
  void set combine(int combine)
  {
    _obj["combine"] = combine;
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
  
  Vector2 get normalScale => new Vector2.fromJsObject(_obj["normalScale"]);
  void set normalScale(Vector2 normalScale)
  {
    _obj["normalScale"] = normalScale._obj;
  }
  
  bool get morphNormals => _obj["morphNormals"];
  void set morphNormals(bool morphNormals)
  {
    _obj["morphNormals"] = morphNormals;
  }
  
  bool get metal => _obj["metal"];
  void set metal(bool metal)
  {
    _obj["metal"] = metal;
  }
  
  num get bumpScale => _obj["bumpScale"];
  void set bumpScale(num bumpScale)
  {
    _obj["bumpScale"] = bumpScale;
  }
  
  bool get wrapAround => _obj["wrapAround"];
  void set wrapAround(bool wrapAround)
  {
    _obj["wrapAround"] = wrapAround;
  }
  
  Map get normalMap => _obj["normalMap"];
  void set normalMap(Map normalMap)
  {
    _obj["normalMap"] = new JsObject.jsify(normalMap);
  }
  
  Map get bumpMap => _obj["bumpMap"];
  void set bumpMap(Map bumpMap)
  {
    _obj["bumpMap"] = new JsObject.jsify(bumpMap);
  }
  
  Vector3 get wrapRGB => new Vector3.fromJsObject(_obj["wrapRGB"]);
  void set wrapRGB(Vector3 wrapRGB)
  {
    _obj["wrapRGB"] = wrapRGB._obj;
  }

  
  // == METHODS ==
  
  
  MeshPhongMaterial clone([MeshPhongMaterial material])
  {
   JsObject cloned = _obj.callMethod("clone");
   MeshPhongMaterial clone = new MeshPhongMaterial.fromJsObject(cloned);
   return clone;
  }
}