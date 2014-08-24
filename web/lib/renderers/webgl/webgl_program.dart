part of ThreeJSWrapper;

class WebGLProgram extends ThreeBase
{
  WebGLProgram(WebGLRenderer renderer, Map code, Material material, Map parameters)
  {
    JsObject rendererJS = renderer._obj;
    JsObject codeJS = new JsObject.jsify(code);
    JsObject materialJS = material._obj;
    JsObject parametersJS = new JsObject.jsify(parameters);
    
    _obj = new JsObject(context["THREE"]["WebGLProgram"], [ rendererJS, codeJS, materialJS, parametersJS ]);
  }
  
  WebGLProgram.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get uniforms => _obj["uniforms"];
  void set uniforms(Map uniforms)
  {
    _obj["uniforms"] = new JsObject.jsify(uniforms);
  }
  
  Map get attributes => _obj["attributes"];
  void set attributes(Map attributes)
  {
    _obj["attributes"] = new JsObject.jsify(attributes);
  }
  
  int get id => _obj["id"];
  void set id(int id)
  {
    _obj["id"] = id;
  }
  
  Map get code => _obj["code"];
  void set code(Map code)
  {
    _obj["code"] = new JsObject.jsify(code);
  }
  
  int get usedTimes => _obj["usedTimes"];
  void set usedTimes(int usedTimes)
  {
    _obj["usedTimes"] = usedTimes;
  }
  
  Program get program => _obj["program"];
  void set program(Program program)
  {
    _obj["program"] = program;
  }
  
  Shader get vertexShader => _obj["vertexShader"];
  void set vertexShader(Shader vertexShader)
  {
    _obj["vertexShader"] = vertexShader;
  }
  
  Shader get fragmentShader => _obj["fragmentShader"];
  void set fragmentShader(Shader fragmentShader)
  {
    _obj["fragmentShader"] = fragmentShader;
  }
}