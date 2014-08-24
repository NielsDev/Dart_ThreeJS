part of ThreeJSWrapper;

class Camera extends Object3D
{
  Camera()
  {
  }
  
  Camera.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Matrix4 get matrixWorldInverse => new Matrix4.fromJsObject(_obj["matrixWorldInverse"]);
  void set matrixWorldInverse(Matrix4 matrixWorldInverse)
  {
    _obj["matrixWorldInverse"] = matrixWorldInverse._obj;
  }
  
  Matrix4 get projectionMatrix => new Matrix4.fromJsObject(_obj["projectionMatrix"]);
  void set projectionMatrix(Matrix4 projectionMatrix)
  {
    _obj["projectionMatrix"] = projectionMatrix._obj;
  }
  
  
  // == METHODS ==
  
  
  void lookAt(Vector3 vector) => _obj.callMethod("lookAt", [ vector._obj ]);
}