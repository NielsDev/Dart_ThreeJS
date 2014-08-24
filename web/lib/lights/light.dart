part of ThreeJSWrapper;

class Light extends Object3D
{
  Light([int hex])
  {
    _obj = new JsObject(context["THREE"]["Light"], [ hex ]);
  }
  
  Light.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Color get color => new Color.fromJsObject(_obj["color"]);
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
}