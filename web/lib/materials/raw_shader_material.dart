part of ThreeJSWrapper;

class RawShaderMaterial extends ShaderMaterial
{
  RawShaderMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["RawShaderMaterial"]);
    }
    else
    {
      Map checkedParameters = parameters;
      if(parameters["uniforms"] != null)
        checkUniformsToJS(parameters["uniforms"]);
      
      _obj = new JsObject(context["THREE"]["RawShaderMaterial"], [ new JsObject.jsify(checkedParameters) ]);
    }
  }
  
  RawShaderMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  RawShaderMaterial clone([RawShaderMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    RawShaderMaterial clone = new RawShaderMaterial.fromJsObject(cloned);
    return clone;
  }
}