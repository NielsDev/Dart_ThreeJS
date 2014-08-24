part of ThreeJSWrapper;

class OrthographicCamera extends Camera
{
  OrthographicCamera(num left, num right, num top, num bottom, num near, num far)
  {
    _obj = new JsObject(context["THREE"]["OrthographicCamera"], [ left, right, top, bottom, near, far ]);
  }
  
  OrthographicCamera.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get left => _obj["left"];
  void set left(num left)
  {
    _obj["left"] = left;
  }
  
  num get right => _obj["right"];
  void set right(num right)
  {
    _obj["right"] = right;
  }
  
  num get top => _obj["top"];
  void set top(num top)
  {
    _obj["top"] = top;
  }
  
  num get bottom => _obj["bottom"];
  void set bottom(num bottom)
  {
    _obj["bottom"] = bottom;
  }
  
  num get near => _obj["near"];
  void set near(num near)
  {
    _obj["near"] = near;
  }
  
  num get far => _obj["far"];
  void set far(num far)
  {
    _obj["far"] = far;
  }
  
  
  // == METHODS ==
  
  
  void updateProjectionMatrix() => _obj.callMethod("updateProjectionMatrix");
}