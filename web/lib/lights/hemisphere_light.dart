part of ThreeJSWrapper;

class HemisphereLight extends Light
{
  HemisphereLight(int skyColorHex, int groundColorHex, num intensity)
  {
    _obj = new JsObject(context["THREE"]["HemisphereLight"], [ skyColorHex, groundColorHex, intensity ]);
  }

  HemisphereLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get groundColor => _obj["groundColor"];
  void set groundColor(int groundColor)
  {
    _obj["groundColor"] = groundColor;
  }
  
  num get intensity => _obj["intensity"];
  void set intensity(num intensity)
  {
    _obj["intensity"] = intensity;
  }
}