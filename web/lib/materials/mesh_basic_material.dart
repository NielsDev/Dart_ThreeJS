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
  
  Color get color => new Color.fromJsObject(_obj["color"]);
  
  void set color(Color color)
  {
    _obj["color"] = color._obj;
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
  
  Object get lightMap => _obj["lightMap"];
  void set lightMap(Object lightMap)
  {
    _obj["lightMap"] = lightMap;
  }
  
  Object get specularMap => _obj["specularMap"];
  void set specularMap(Object specularMap)
  {
    _obj["specularMap"] = specularMap;
  }
  
  Object get alphaMap => _obj["alphaMap"];
  void set alphaMap(Object alphaMap)
  {
    _obj["alphaMap"] = alphaMap;
  }
  
  Object get envMap => _obj["envMap"];
  void set envMap(Object envMap)
  {
    _obj["envMap"] = envMap;
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
  
  Object get map => _obj["map"];
  void set map(Object map)
  {
    _obj["map"] = map;
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