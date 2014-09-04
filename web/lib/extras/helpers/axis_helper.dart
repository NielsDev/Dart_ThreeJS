part of ThreeJSWrapper;

class AxisHelper extends Line
{
  AxisHelper([num size])
  {
    if(size == null)
      _obj = new JsObject(context["THREE"]["AxisHelper"]);
    else
      _obj = new JsObject(context["THREE"]["AxisHelper"], [ size ]);
  }
  
  AxisHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}