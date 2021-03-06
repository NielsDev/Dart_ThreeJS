part of ThreeJSWrapper;

class MeshNormalMaterial extends Material
{
  MeshNormalMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["MeshNormalMaterial"]);
    }
    else
    {
      if(parameters["envMap"] != null)  parameters["envMap"] = parameters["envMap"]._obj;
      if(parameters["map"] != null)     parameters["map"] = parameters["map"]._obj;
      
      _obj = new JsObject(context["THREE"]["MeshNormalMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  MeshNormalMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  bool get morphTargets => _obj["morphTargets"];
  void set morphTargets(bool morphTargets)
  {
    _obj["morphTargets"] = morphTargets;
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

  
  // == METHODS ==
  
  
  MeshNormalMaterial clone([MeshNormalMaterial material])
  {
   JsObject cloned = _obj.callMethod("clone");
   MeshNormalMaterial clone = new MeshNormalMaterial.fromJsObject(cloned);
   return clone;
  }
}