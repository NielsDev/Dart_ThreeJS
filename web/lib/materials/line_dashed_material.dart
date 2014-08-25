part of ThreeJSWrapper;

class LineDashedMaterial extends Material
{
  LineDashedMaterial([Map parameters])
  {
    if(parameters == null)
      _obj = new JsObject(context["THREE"]["LineDashedMaterial"]);
    else
      _obj = new JsObject(context["THREE"]["LineDashedMaterial"], [ new JsObject.jsify(parameters) ]);
  }
  
  LineDashedMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get color => _obj["color"];
  void set color(int color)
  {
    _obj["color"] = color;
  }
  
  int get vertexColors => _obj["vertexColors"];
  void set vertexColors(int vertexColors)
  {
    _obj["vertexColors"] = vertexColors;
  }
  
  num get dashSize => _obj["dashSize"];
  void set dashSize(num dashSize)
  {
    _obj["dashSize"] = dashSize;
  }
  
  bool get fog => _obj["fog"];
  void set fog(bool fog)
  {
    _obj["fog"] = fog;
  }
  
  num get gapSize => _obj["gapSize"];
  void set gapSize(num gapSize)
  {
    _obj["gapSize"] = gapSize;
  }
  
  num get linewidth => _obj["linewidth"];
  void set linewidth(num linewidth)
  {
    _obj["linewidth"] = linewidth;
  }
}