part of ThreeJSWrapper;

class FogExp2 extends AbstractFog
{
  FogExp2(int hex, num density)
  {
    _obj = new JsObject(context["THREE"]["FogExp2"], [ hex, density ]);
  }
  
  FogExp2.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  String get name => _obj["name"];
  void set name(String name)
  {
    _obj["name"] = name;
  }
  
  Color get color => ThreeBase._fromCache(this, Color, "color");
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
  
  num get density => _obj["density"];
  void set density(num density)
  {
    _obj["density"] = density;
  }
  
  
  // == METHODS ==
  
  
  FogExp2 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    FogExp2 clone = new FogExp2.fromJsObject(cloned);
    return clone;
  }
}