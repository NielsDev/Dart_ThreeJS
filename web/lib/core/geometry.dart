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
  
  List<Vector3> get vertices
  {
    List<JsObject> list = _obj["vertices"];
    List<Vector3> listVectors = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listVectors.add(new Vector3.fromJsObject(list[i]));
    
    return listVectors;
  }
  void set vertices(List<Vector3> vertices)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = vertices.length; i < l; i++)
      list.add(vertices[i]._obj);
    
    _obj["vertices"] = new JsObject.jsify(list);
  }
  
  List<Color> get colors
  {
    List<JsObject> list = _obj["colors"];
    List<Color> listColors = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listColors.add(new Color.fromJsObject(list[i]));
    
    return listColors;
  }
  void set colors(List<Color> colors)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = colors.length; i < l; i++)
      list.add(colors[i]._obj);
    
    _obj["colors"] = new JsObject.jsify(list);
  }
  
  List<Face3> get faces
  {
    List<JsObject> list = _obj["faces"];
    List<Face3> listFaces = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listFaces.add(new Face3.fromJsObject(list[i]));
      
    return listFaces;
  }
  void set faces(List<Face3> faces)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = faces.length; i < l; i++)
      list.add(faces[i]._obj);
    
    _obj["faces"] = new JsObject.jsify(list);
  }
  
  List<List<Vector2>> get faceVertexUvs
  {
    List<List<JsObject>> list = _obj["faceVertexUvs"];
    List<List<Vector2>> listFaceVertexUvs = [];
    
    for(int i = 0, il = list.length; i < il; i++)
    {
      List<JsObject> subListJS = list[i];
      List<Vector2> subList = new List<Vector2>();
      listFaceVertexUvs.add(subList);
      
      for(int j = 0, jl = subListJS.length; j < jl; j++)
      {
        subList.add(new Vector2.fromJsObject(subListJS[j]));
      }
    }
    
    return listFaceVertexUvs;
  }
  void set faceVertexUvs(List<List<Vector2>> faceVertexUvs)
  {
    List<List<JsObject>> list = [];
    
    for(int i = 0, il = faceVertexUvs.length; i < il; i++)
    {
      List<JsObject> subListJS = new List<JsObject>();
      List<Vector2> subList = faceVertexUvs[i];
      list.add(subListJS);
      
      for(int j = 0, jl = subList.length; j < jl; j++)
      {
        subListJS.add(subList[j]._obj);
      }
    }
    
    _obj["faceVertexUvs"] = new JsObject.jsify(list);
  }
  
  List<Map> get morphTargets => _obj["morphTargets"];
  void set morphTargets(List<Map> morphTargets)
  {
    _obj["morphTargets"] = new JsObject.jsify(morphTargets);
  }
  
  List<Color> get morphColors
  {
    List<JsObject> listJS = _obj["morphColors"];
    List<Color> list = [];
    
    for(int i = 0, l = listJS.length; i < l; i++)
      list.add(new Color.fromJsObject(listJS[i]));
    
    return list;
  }
  void set morphColors(List<Color> morphColors)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = morphColors.length; i < l; i++)
      list.add(morphColors[i]._obj);
    
    _obj["morphColors"] = new JsObject.jsify(list);
  }
  
  List<Vector3> get morphNormals
  {
    List<JsObject> listJS = _obj["morphNormals"];
    List<Vector3> list = [];
    
    for(int i = 0, l = listJS.length; i < l; i++)
      list.add(new Vector3.fromJsObject(listJS[i]));
    
    return list;
  }
  void set morphNormals(List<Vector3> morphNormals)
  {
    List<JsObject> list = [];
        
    for(int i = 0, l = morphNormals.length; i < l; i++)
      list.add(morphNormals[i]._obj);
    
    _obj["morphNormals"] = new JsObject.jsify(list);
  }
  
  List<num> get skinWeights => _obj["skinWeights"];
  void set skinWeights(List<num> skinWeights)
  {
    _obj["skinWeights"] = new JsObject.jsify(skinWeights);
  }
  
  List<int> get skinIndices => _obj["skinIndices"];
  void set skinIndices(List<int> skinIndices)
  {
    _obj["skinIndices"] = new JsObject.jsify(skinIndices);
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
  
  List<num> get lineDistances => _obj["lineDistances"];
  void set lineDistances(List<num> lineDistances)
  {
    _obj["lineDistances"] = new JsObject.jsify(lineDistances);
  }
  
  
  // == METHODS ==
  
  void applyMatrix(Matrix4 matrix) => _obj.callMethod("applyMatrix", [ matrix._obj ]);
  
  void computeFaceNormals() => _obj.callMethod("computeFaceNormals");
  
  void computeVertexNormals() => _obj.callMethod("computeVertexNormals)");
  
  void computeMorphNormals() => _obj.callMethod("computeMorphNormals");
  
  void computeTangents() => _obj.callMethod("computeTangents");
  
  void computeBoundingBox() => _obj.callMethod("computeBoundingBox");
  
  void computeBoundingSphere() => _obj.callMethod("computeBoundingSphere");

  void merge(Geometry geometry, Matrix4 matrix, int materialIndexOffset) => _obj.callMethod("merge", [ geometry._obj, matrix._obj, materialIndexOffset ]);
  
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