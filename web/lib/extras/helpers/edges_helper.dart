part of ThreeJSWrapper;

class EdgesHelper extends Line
{
  EdgesHelper(Object3D object, [int hex])
  {
    if(hex == null)
      _obj = new JsObject(context["THREE"]["EdgesHelper"], [ object._obj ]);
    else
      _obj = new JsObject(context["THREE"]["EdgesHelper"], [ object._obj, hex ]);
  }
  
  EdgesHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}