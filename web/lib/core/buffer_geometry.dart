part of ThreeJSWrapper;

class BufferGeometry extends EventDispatcher
{
  BufferGeometry()
  {
    _obj = new JsObject(context["THREE"]["BufferGeometry"]);
  }
  
  BufferGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get id => _obj["id"];
  String get uuid => _obj["uuid"];
  
  Map get attributes => _obj["attributes"];
  void set attributes(Map attributes)
  {
    _obj["attributes"] = new JsObject.jsify(attributes);
  }
  
  bool get dynamic => _obj["dynamic"];
  void set dynamic(bool dynamic)
  {
    _obj["dynamic"] = dynamic;
  }
  
  List<Map> get offsets => _obj["offsets"];
  void set offsets(List<Map> offsets)
  {
    _obj["offsets"] = new JsObject.jsify(offsets);
  }
  
  Box3 get boundingBox => ThreeBase._fromCache(this, Box3, "boundingBox");
  void set boundingBox(Box3 boundingBox)
  {
    _obj["boundingBox"] = boundingBox._obj;
    _cache["boundingBox"] = boundingBox;
  }
  
  Sphere get boundingSphere => ThreeBase._fromCache(this, Sphere, "boundingSphere");
  void set boundingSphere(Sphere boundingSphere)
  {
    _obj["boundingSphere"] = boundingSphere._obj;
    _cache["boundingSphere"] = boundingSphere;
  }
  
  List<Map> get morphTargets => _obj["morphTargets"];
  void set morphTargets(List<Map> morphTargets)
  {
    _obj["morphTargets"] = morphTargets;
  }
  
  bool get hasTangents => _obj["hasTangents"];
  void set hasTangents(bool hasTangents)
  {
    _obj["hasTangents"] = hasTangents;
  }
  
  
  // == METHODS ==
  
  void applyMatrix(Matrix4 matrix) => _obj.callMethod("applyMatrix", [ matrix._obj ]);
  
  void computeVertexNormals() => _obj.callMethod("computeVertexNormals)");
  
  void computeTangents() => _obj.callMethod("computeTangents");
  
  void computeBoundingBox() => _obj.callMethod("computeBoundingBox");
  
  void computeBoundingSphere() => _obj.callMethod("computeBoundingSphere");
  
  void dispose() => _obj.callMethod("dispose");
  
  void normalizeNormals() => _obj.callMethod("normalizeNormals");
}