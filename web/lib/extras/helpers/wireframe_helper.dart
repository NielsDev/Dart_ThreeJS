part of ThreeJSWrapper;

class WireframeHelper extends Line
{
  WireframeHelper(Object3D object, [int hex])
  {
    if(hex == null)
      _obj = new JsObject(context["THREE"]["WireframeHelper"], [ object._obj ]);
    else
      _obj = new JsObject(context["THREE"]["WireframeHelper"], [ object._obj, hex ]);
  }
  
  WireframeHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}