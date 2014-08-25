part of ThreeJSWrapper;

class LineBasicMaterial extends Material
{
  LineBasicMaterial([Map parameters])
  {
    if(parameters == null)
      _obj = new JsObject(context["THREE"]["LineBasicMaterial"]);
    else
      _obj = new JsObject(context["THREE"]["LineBasicMaterial"], [ new JsObject.jsify(parameters) ]);
  }
  
  LineBasicMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get color => _obj["color"];
  void set color(int color)
  {
    _obj["color"] = color;
  }
  
  num get linewidth => _obj["linewidth"];
  void set linewidth(num linewidth)
  {
    _obj["linewidth"] = linewidth;
  }
  
  String get linecap => _obj["linecap"];
  void set linecap(String linecap)
  {
    _obj["linecap"] = linecap;
  }
  
  String get linejoin => _obj["linejoin"];
  void set linejoin(String linejoin)
  {
    _obj["linejoin"] = linejoin;
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
}