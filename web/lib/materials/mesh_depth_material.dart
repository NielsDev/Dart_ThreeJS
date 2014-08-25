part of ThreeJSWrapper;

class MeshDepthMaterial extends Material
{
  MeshDepthMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["MeshDepthMaterial"]);
    }
    else
    {
      if(parameters["envMap"] != null)
        parameters["envMap"] = parameters["envMap"]._obj;
      
      _obj = new JsObject(context["THREE"]["MeshDepthMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  MeshDepthMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
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
  
  
  MeshDepthMaterial clone([MeshDepthMaterial material])
  {
   JsObject cloned = _obj.callMethod("clone");
   MeshDepthMaterial clone = new MeshDepthMaterial.fromJsObject(cloned);
   return clone;
  }
}