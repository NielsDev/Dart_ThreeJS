part of ThreeJSWrapper;

class SkinnedMesh extends Object3D
{
  SkinnedMesh(Geometry geometry, [Material material, bool useVertexTexture])
  {
    List args = [ geometry._obj ];
    if(material != null)
      args.add(material._obj);
    
    if(useVertexTexture != null)
      args.add(useVertexTexture);
    
    _obj = new JsObject(context["THREE"]["SkinnedMesh"], args);
  }
  
  SkinnedMesh.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<Bone> get bones
  {
    List<JsObject> list = _obj["bones"];
    List<Bone> listBones = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listBones.add(new Bone.fromJsObject(list[i]));
    
    return listBones;
  }
  void set bones(List<Bone> bones)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = bones.length; i < l; i++)
      list.add(bones[i]._obj);
    
    _obj["bones"] = new JsObject.jsify(list);
  }
  
  Matrix4 get identityMatrix => ThreeBase._fromCache(this, Matrix4, "identityMatrix");
  void set identityMatrix(Matrix4 identityMatrix)
  {
    _obj["identityMatrix"] = identityMatrix._obj;
    _cache["identityMatrix"] = identityMatrix;
  }
  
  bool get useVertexTexture => _obj["useVertexTexture"];
  void set useVertexTexture(bool useVertexTexture)
  {
    _obj["useVertexTexture"] = useVertexTexture;
  }
  
  
  // == METHODS ==
  
  
  void pose() => _obj.callMethod("pose");
  
  Bone addBone([Bone bone])
  {
    JsObject returnedBone;
    
    if(bone == null)
      returnedBone = _obj.callMethod("addBone");
    else
      returnedBone = _obj.callMethod("addBone", [ bone._obj ]);
    
    Bone returnBone = new Bone.fromJsObject(returnedBone);
    return returnBone;
  }
}