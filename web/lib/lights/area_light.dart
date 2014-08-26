part of ThreeJSWrapper;

class AreaLight extends Light
{
  AreaLight(int hex, num intensity)
  {
    _obj = new JsObject(context["THREE"]["AreaLight"], [ hex, intensity ]);
  }
  
  AreaLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get right => ThreeBase._fromCache(this, Vector3, "right");
  void set right(Vector3 right)
  {
    _obj["right"] = right._obj;
  }
  
  Vector3 get normal => ThreeBase._fromCache(this, Vector3, "normal");
  void set normal(Vector3 normal)
  {
    _obj["normal"] = normal._obj;
  }
  
  num get height => _obj["height"];
  void set height(num height)
  {
    _obj["height"] = height;
  }
  
  num get width => _obj["width"];
  void set width(num width)
  {
    _obj["width"] = width;
  }
  
  num get intensity => _obj["intensity"];
  void set intensity(num intensity)
  {
    _obj["intensity"] = intensity;
  }
  
  num get constantAttenuation => _obj["constantAttenuation"];
  void set constantAttenuation(num constantAttenuation)
  {
    _obj["constantAttenuation"] = constantAttenuation;
  }
  
  num get linearAttenuation => _obj["linearAttenuation"];
  void set linearAttenuation(num linearAttenuation)
  {
    _obj["linearAttenuation"] = linearAttenuation;
  }
  
  num get quadraticAttenuation => _obj["quadraticAttenuation"];
  void set quadraticAttenuation(num quadraticAttenuation)
  {
    _obj["quadraticAttenuation"] = quadraticAttenuation;
  }
}