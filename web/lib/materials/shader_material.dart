part of ThreeJSWrapper;

class ShaderMaterial extends Material
{
  ShaderMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["ShaderMaterial"]);
    }
    else
    {
      Map checkedParameters = parameters;
      if(parameters["uniforms"] != null)
        checkUniformsToJS(parameters["uniforms"]);
      
      _obj = new JsObject(context["THREE"]["ShaderMaterial"], [ new JsObject.jsify(checkedParameters) ]);
    }
  }
  
  ShaderMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get uniforms
  {
    Map map = _obj["uniforms"];
    checkUniformsFromJS(map);
    return map;
  }
  void set uniforms(Map uniforms)
  {
    checkUniformsToJS(uniforms);
    _obj["uniforms"] = new JsObject.jsify(uniforms);
  }
  
  String get fragmentShader => _obj["fragmentShader"];
  void set fragmentShader(String fragmentShader)
  {
    _obj["fragmentShader"] = fragmentShader;
  }
  
  String get vertexShader => _obj["vertexShader"];
  void set vertexShader(String vertexShader)
  {
    _obj["vertexShader"] = vertexShader;
  }
  
  bool get morphTargets => _obj["morphTargets"];
  void set morphTargets(bool morphTargets)
  {
    _obj["morphTargets"] = morphTargets;
  }
  
  bool get lights => _obj["lights"];
  void set lights(bool lights)
  {
    _obj["lights"] = lights;
  }
  
  bool get morphNormals => _obj["morphNormals"];
  void set morphNormals(bool morphNormals)
  {
    _obj["morphNormals"] = morphNormals;
  }
  
  bool get wireframe => _obj["wireframe"];
  void set wireframe(bool wireframe)
  {
    _obj["wireframe"] = wireframe;
  }
  
  int get vertexColors => _obj["vertexColors"];
  void set vertexColors(int vertexColors)
  {
    _obj["vertexColors"] = vertexColors;
  }
  
  bool get skinning => _obj["skinning"];
  void set skinning(bool skinning)
  {
    _obj["skinning"] = skinning;
  }
  
  bool get fog => _obj["fog"];
  void set fog(bool fog)
  {
    _obj["fog"] = fog;
  }
  
  Map get attributes => _obj["attributes"];
  void set attributes(Map attributes)
  {
    _obj["attributes"] = attributes;
  }
  
  num get shading => _obj["shading"];
  void set shading(num shading)
  {
    _obj["shading"] = shading;
  }
  
  num get linewidth => _obj["linewidth"];
  void set linewidth(num linewidth)
  {
    _obj["linewidth"] = linewidth;
  }
  
  num get wireframeLinewidth => _obj["wireframeLinewidth"];
  void set wireframeLinewidth(num wireframeLinewidth)
  {
    _obj["wireframeLinewidth"] = wireframeLinewidth;
  }
  
  Map get defines => _obj["defines"];
  void set defines(Map defines)
  {
    _obj["defines"] = defines;
  }
  
  
  // == METHODS ==
  
  
  // The following method is used to replace all instances of Dart objects with the corresponding JS objects
  void checkUniformsToJS(Map uniforms)
  {
    uniforms.forEach((key, val)
    {
      dynamic value = val["value"];
      
      if(value is Texture || value is Color || value is Vector2 || value is Vector3 || value is Vector4 || value is Matrix3 || value is Matrix4)
      {
        uniforms[key]["value"] = value._obj;
      }
      else if(value is Float32List || value is Int32List)
      {
        uniforms[key]["value"] = new JsObject.jsify(value);
      }
      else if(value is List<Vector2>)
      {
        List<Vector2> v2v = value;
        List<JsObject> list = [];
        
        for(int i = 0, l = v2v.length; i < l; i++)
          list.add(v2v[i]._obj);
        
        uniforms[key]["value"] = list;
      }
      else if(value is List<Vector3>)
      {
        List<Vector3> v3v = value;
        List<JsObject> list = [];
        
        for(int i = 0, l = v3v.length; i < l; i++)
          list.add(v3v[i]._obj);
        
        uniforms[key]["value"] = list;
      }
      else if(value is List<Vector4>)
      {
        List<Vector4> v4v = value;
        List<JsObject> list = [];
        
        for(int i = 0, l = v4v.length; i < l; i++)
          list.add(v4v[i]._obj);
        
        uniforms[key]["value"] = list;
      }
      else if(value is List<Matrix4>)
      {
        List<Matrix4> v4v = value;
        List<JsObject> list = [];
        
        for(int i = 0, l = v4v.length; i < l; i++)
          list.add(v4v[i]._obj);
        
        uniforms[key]["value"] = list;
      }
      else if(value is List<Texture>)
      {
        List<Texture> tv = value;
        List<JsObject> list = [];
        
        for(int i = 0, l = tv.length; i < l; i++)
          list.add(tv[i]._obj);
        
        uniforms[key]["value"] = list;
      }
    });
  }
  
  // The following method is used to replace all instances of JS objects with the corresponding Dart objects
  void checkUniformsFromJS(Map uniforms)
  {
    uniforms.forEach((key, val)
    {
      String type = val["type"];
      dynamic value = val["value"];
      
      if(type == "t")
      {
        uniforms[key]["value"] = new Texture.fromJsObject(value);
      }
      else if(type == "v2")
      {
        uniforms[key]["value"] = new Vector2.fromJsObject(value);
      }
      else if(type == "v3")
      {
        uniforms[key]["value"] = new Vector3.fromJsObject(value);
      }
      else if(type == "v4")
      {
        uniforms[key]["value"] = new Vector4.fromJsObject(value);
      }
      else if(type == "c")
      {
        uniforms[key]["value"] = new Color.fromJsObject(value);
      }
      else if(type == "v2v")
      {
        List<JsObject> v2v = value;
        List<Vector2> list = [];
        
        for(int i = 0, l = v2v.length; i < l; i++)
          list.add(new Vector2.fromJsObject(v2v[i]));
        
        uniforms[key]["value"] = list;
      }
      else if(type == "v3v")
      {
        List<JsObject> v3v = value;
        List<Vector3> list = [];
        
        for(int i = 0, l = v3v.length; i < l; i++)
          list.add(new Vector3.fromJsObject(v3v[i]));
        
        uniforms[key]["value"] = list;
      }
      else if(type == "v4v")
      {
        List<JsObject> v4v = value;
        List<Vector4> list = [];
        
        for(int i = 0, l = v4v.length; i < l; i++)
          list.add(new Vector4.fromJsObject(v4v[i]));
        
        uniforms[key]["value"] = list;
      }
      else if(type == "m4v")
      {
        List<JsObject> m4v = value;
        List<Matrix4> list = [];
        
        for(int i = 0, l = m4v.length; i < l; i++)
          list.add(new Matrix4.fromJsObject(m4v[i]));
        
        uniforms[key]["value"] = list;
      }
      else if(type == "tv")
      {
        List<JsObject> tv = value;
        List<Texture> list = [];
        
        for(int i = 0, l = tv.length; i < l; i++)
          list.add(new Texture.fromJsObject(tv[i]));
        
        uniforms[key]["value"] = list;
      }
    });
  }
  
  ShaderMaterial clone([ShaderMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    ShaderMaterial clone = new ShaderMaterial.fromJsObject(cloned);
    return clone;
  }
}