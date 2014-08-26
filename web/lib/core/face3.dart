part of ThreeJSWrapper;

class Face3 extends ThreeBase
{
  Face3(int a, int b, int c, Vector3 normal, Color color, int materialIndex)
  {
    JsObject normalJS = normal._obj;
    JsObject colorJS = color._obj;
    _obj = new JsObject(context["THREE"]["Face3"], [ a, b, c, normalJS, colorJS, materialIndex ]);
  }
  
  Face3.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get a => _obj["a"];
  void set a(int a)
  {
    _obj["a"] = a;
  }
  
  int get b => _obj["b"];
  void set b(int b)
  {
    _obj["b"] = b;
  }
  
  int get c => _obj["c"];
  void set c(int c)
  {
    _obj["c"] = c;
  }
  
  Vector3 get normal => ThreeBase._fromCache(this, Vector3, "normal");
  void set normal(Vector3 normal)
  {
    _obj["normal"] = normal._obj;
    _cache["normal"] = normal;
  }
  
  Color get color => ThreeBase._fromCache(this, Color, "color");
  void set color(Color color)
  {
    _obj["color"] = color._obj;
    _cache["color"] = color;
  }
  
  List<Vector3> get vertexNormals
  {
    List<JsObject> list = _obj["vertexNormals"];
    List<Vector3> vectorList = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      vectorList.add(new Vector3.fromJsObject(list[i]));
    
    return vectorList;
  }
  void set vertexNormals(List<Vector3> list)
  {
    List<JsObject> listJS = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listJS.add(list[i]._obj);
    
    _obj["vertexNormals"] = new JsObject.jsify(listJS);
  }
  
  List<Color> get vertexColors
  {
    List<JsObject> list = _obj["vertexColors"];
    List<Color> vectorList = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      vectorList.add(new Color.fromJsObject(list[i]));
    
    return vectorList;
  }
  void set vertexColors(List<Color> list)
  {
    List<JsObject> listJS = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listJS.add(list[i]._obj);
    
    _obj["vertexColors"] = new JsObject.jsify(listJS);
  }
  
  List<Vector4> get vertexTangents
  {
    List<JsObject> list = _obj["vertexTangents"];
    List<Vector4> vectorList = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      vectorList.add(new Vector4.fromJsObject(list[i]));
    
    return vectorList;
  }
  void set vertexTangents(List<Vector4> list)
  {
    List<JsObject> listJS = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listJS.add(list[i]._obj);
    
    _obj["vertexTangents"] = new JsObject.jsify(listJS);
  }
  
  int get materialIndex => _obj["materialIndex"];
  void set materialIndex(int materialIndex)
  {
    _obj["materialIndex"] = materialIndex;
  }
  
  
  // == METHODS ==
  
  
  Face3 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Face3 clone = new Face3.fromJsObject(cloned);
    return clone;
  }
}