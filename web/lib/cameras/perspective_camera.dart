part of ThreeJSWrapper;

class PerspectiveCamera extends Camera
{
  PerspectiveCamera(num fov, num aspect, num near, num far)
  {
    _obj = new JsObject(context["THREE"]["PerspectiveCamera"], [ fov, aspect, near, far ]);
  }
  
  PerspectiveCamera.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get fov => _obj["fov"];
  void set fov(num fov)
  {
    _obj["fov"] = fov;
  }
  
  num get aspect => _obj["aspect"];
  void set aspect(num aspect)
  {
    _obj["aspect"] = aspect;
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
  
  
  void setLens(num focalLength, num frameSize) => _obj.callMethod("setLens", [ focalLength, frameSize ]);
  
  void setViewOffset(num fullWidth, num fullHeight, num x, num y, num width, num height) => _obj.callMethod("setViewOffset", [ fullWidth, fullHeight, x, y, width, height ]);
  
  void updateProjectionMatrix() => _obj.callMethod("updateProjectionMatrix");
}