part of ThreeJSWrapper;

class Geometry extends EventDispatcher
{
  Geometry()
  {
    _obj = new JsObject(context["THREE"]["Geometry"]);
  }
  
  Geometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get id => _obj["id"];
  String get uuid => _obj["uuid"];
  
  String get name => _obj["name"];
  void set name(String name)
  {
    _obj["name"] = name;
  }
  
  List get vertices => _obj["vertices"];
  void set vertices(List vertices)
  {
    _obj["vertices"] = new JsObject.jsify(vertices);
  }
  
  List get colors => _obj["colors"];
  void set colors(List colors)
  {
    _obj["colors"] = new JsObject.jsify(colors);
  }
  
  List get faces => _obj["faces"];
  void set faces(List faces)
  {
    _obj["faces"] = new JsObject.jsify(faces);
  }
  
  List<List> get faceVertexUvs => _obj["faceVertexUvs"];
  void set faceVertexUvs(List<List> faceVertexUvs)
  {
    _obj["faceVertexUvs"] = new JsObject.jsify(faceVertexUvs);
  }
  
  List get morphTargets => _obj["morphTargets"];
  void set morphTargets(List morphTargets)
  {
    _obj["morphTargets"] = new JsObject.jsify(morphTargets);
  }
  
  List get morphColors => _obj["morphColors"];
  void set morphColors(List morphColors)
  {
    _obj["morphColors"] = new JsObject.jsify(morphColors);
  }
  
  List get morphNormals => _obj["morphNormals"];
  void set morphNormals(List morphNormals)
  {
    _obj["morphNormals"] = new JsObject.jsify(morphNormals);
  }
  
  List get skinWeights => _obj["skinWeights"];
  void set skinWeights(List skinWeights)
  {
    _obj["skinWeights"] = new JsObject.jsify(skinWeights);
  }
  
  List get skinIndices => _obj["skinIndices"];
  void set skinIndices(List skinIndices)
  {
    _obj["skinIndices"] = new JsObject.jsify(skinIndices);
  }
  
  Object get boundingBox => _obj["boundingBox"];
  void set boundingBox(Object boundingBox)
  {
    _obj["boundingBox"] = boundingBox;
  }
  
  Object get boundingSphere => _obj["boundingSphere"];
  void set boundingSphere(Object boundingSphere)
  {
    _obj["boundingSphere"] = boundingSphere;
  }
  
  bool get hasTangents => _obj["hasTangents"];
  void set hasTangents(bool hasTangents)
  {
    _obj["hasTangents"] = hasTangents;
  }
  
  bool get dynamic => _obj["dynamic"];
  void set dynamic(bool dynamic)
  {
    _obj["dynamic"] = dynamic;
  }
  
  bool get verticesNeedUpdate => _obj["verticesNeedUpdate"];
  void set verticesNeedUpdate(bool verticesNeedUpdate)
  {
    _obj["verticesNeedUpdate"] = verticesNeedUpdate;
  }
  
  bool get elementsNeedUpdate => _obj["elementsNeedUpdate"];
  void set elementsNeedUpdate(bool elementsNeedUpdate)
  {
    _obj["elementsNeedUpdate"] = elementsNeedUpdate;
  }
  
  bool get uvsNeedUpdate => _obj["uvsNeedUpdate"];
  void set uvsNeedUpdate(bool uvsNeedUpdate)
  {
    _obj["uvsNeedUpdate"] = uvsNeedUpdate;
  }
  
  bool get normalsNeedUpdate => _obj["normalsNeedUpdate"];
  void set normalsNeedUpdate(bool normalsNeedUpdate)
  {
    _obj["normalsNeedUpdate"] = normalsNeedUpdate;
  }
  
  bool get tangentsNeedUpdate => _obj["tangentsNeedUpdate"];
  void set tangentsNeedUpdate(bool tangentsNeedUpdate)
  {
    _obj["tangentsNeedUpdate"] = tangentsNeedUpdate;
  }
  
  bool get colorsNeedUpdate => _obj["colorsNeedUpdate"];
  void set colorsNeedUpdate(bool colorsNeedUpdate)
  {
    _obj["colorsNeedUpdate"] = colorsNeedUpdate;
  }
  
  bool get lineDistancesNeedUpdate => _obj["lineDistancesNeedUpdate"];
  void set lineDistancesNeedUpdate(bool lineDistancesNeedUpdate)
  {
    _obj["lineDistancesNeedUpdate"] = lineDistancesNeedUpdate;
  }
  
  bool get buffersNeedUpdate => _obj["buffersNeedUpdate"];
  void set buffersNeedUpdate(bool buffersNeedUpdate)
  {
    _obj["buffersNeedUpdate"] = buffersNeedUpdate;
  }
  
  List get lineDistances => _obj["lineDistances"];
  void set lineDistances(List lineDistances)
  {
    _obj["lineDistances"] = new JsObject.jsify(lineDistances);
  }
  
  
  // == METHODS ==
  
  void applyMatrix(Object matrix) => _obj.callMethod("applyMatrix", [ matrix ]);
  
  void computeFaceNormals() => _obj.callMethod("computeFaceNormals");
  
  void computeVertexNormals() => _obj.callMethod("computeVertexNormals)");
  
  void computeMorphNormals() => _obj.callMethod("computeMorphNormals");
  
  void computeTangents() => _obj.callMethod("computeTangents");
  
  void computeBoundingBox() => _obj.callMethod("computeBoundingBox");
  
  void computeBoundingSphere() => _obj.callMethod("computeBoundingSphere");

  void merge(Geometry geometry, Object matrix, int materialIndexOffset) => _obj.callMethod("merge", [ geometry, matrix, materialIndexOffset ]);
  
  void mergeVertices() => _obj.callMethod("mergeVertices");
  
  void makeGroups() => _obj.callMethod("makeGroups");
  
  Geometry clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Geometry clone = new Geometry.fromJsObject(cloned);
    return clone;
  }
  
  void dispose() => _obj.callMethod("dispose");
  
  void computeLineDistances() => _obj.callMethod("computeLineDistances");
}