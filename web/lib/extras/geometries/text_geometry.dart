part of ThreeJSWrapper;

class TextGeometry extends ExtrudeGeometry
{
  TextGeometry(String text, Map parameters)
  {
    _obj = new JsObject(context["THREE"]["TextGeometry"], [ text, new JsObject.jsify(parameters) ]);
  }
  
  TextGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}