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
  
  Matrix4 get matrixWorldInverse => ThreeBase._fromCache(this, Matrix4, "matrixWorldInverse");
  void set matrixWorldInverse(Matrix4 matrixWorldInverse)
  {
    _obj["matrixWorldInverse"] = matrixWorldInverse._obj;
    _cache["matrixWorldInverse"] = matrixWorldInverse;
  }
  
  Matrix4 get projectionMatrix => ThreeBase._fromCache(this, Matrix4, "projectionMatrix");
  void set projectionMatrix(Matrix4 projectionMatrix)
  {
    _obj["projectionMatrix"] = projectionMatrix._obj;
    _cache["projectionMatrix"] = projectionMatrix;
  }
  
  
  // == METHODS ==
  
  
  void lookAt(Vector3 vector) => _obj.callMethod("lookAt", [ vector._obj ]);
}