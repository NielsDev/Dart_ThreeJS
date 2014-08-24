part of ThreeJSWrapper;

class Fog extends AbstractFog
{
  Fog(int hex, num near, num far)
  {
    _obj = new JsObject(context["THREE"]["Fog"], [ hex, near, far ]);
  }
  
  Fog.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  String get name => _obj["name"];
  void set name(String name)
  {
    _obj["name"] = name;
  }
  
  Color get color => new Color.fromJsObject(_obj["color"]);
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
  
  num get near => _obj["near"];
  void set near(num near)
  {
    _obj["near"] = near;
  }
  
  num get far => _obj["far"];
  void set far(num far)
  {
    _obj["far"] = far;
  }
  
  
  // == METHODS ==
  
  
  Fog clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Fog clone = new Fog.fromJsObject(cloned);
    return clone;
  }
}