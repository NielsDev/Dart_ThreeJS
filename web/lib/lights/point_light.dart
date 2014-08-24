part of ThreeJSWrapper;

class PointLight extends Light
{
  PointLight(int hex, num intensity, num distance)
  {
    _obj = new JsObject(context["THREE"]["PointLight"], [ hex, intensity, distance ]);
  }
  
  PointLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get intensity => _obj["intensity"];
  void set intensity(num intensity)
  {
    _obj["intensity"] = intensity;
  }
  
  num get distance => _obj["distance"];
  void set distance(num distance)
  {
    _obj["distance"] = distance;
  }
}