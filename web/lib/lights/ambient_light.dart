part of ThreeJSWrapper;

class AmbientLight extends Light
{
  AmbientLight(int hex)
  {
    _obj = new JsObject(context["THREE"]["AmbientLight"], [ hex ]);
  }
  
  AmbientLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}