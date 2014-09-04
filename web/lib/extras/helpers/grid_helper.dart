part of ThreeJSWrapper;

class GridHelper extends Line
{
  GridHelper(num size, num step)
  {
    _obj = new JsObject(context["THREE"]["GridHelper"], [ size, step ]);
  }
  
  GridHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  void setColors(int colorCenterLine, int colorGrid) => _obj.callMethod("setColors", [ colorCenterLine, colorGrid ]);
}