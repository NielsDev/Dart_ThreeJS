part of ThreeJSWrapper;

class Bone extends Object3D
{
  Bone(SkinnedMesh belongsToSkin)
  {
    _obj = new JsObject(context["THREE"]["Bone"], [ belongsToSkin._obj ]);
  }
  
  Bone.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Matrix4 get skinMatrix => new Matrix4.fromJsObject(_obj["skinMatrix"]);
  void set skinMatrix(Matrix4 skinMatrix)
  {
    _obj["skinMatrix"] = skinMatrix._obj;
  }
  
  SkinnedMesh get skin => new SkinnedMesh.fromJsObject(_obj["skin"]);
  void set skin(SkinnedMesh skin)
  {
    _obj["skin"] = skin._obj;
  }
  
  
  // == METHODS ==
  
  
  void updateMatrixWorld(bool force) => _obj.callMethod("updateMatrixWorld", [ force ]);
}