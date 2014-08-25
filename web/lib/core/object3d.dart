part of ThreeJSWrapper;

class Object3D extends EventDispatcher
{
  Object3D()
  {
    _obj = new JsObject(context["THREE"]["Object3D"]);
  }
  
  Object3D.fromJsObject(JsObject obj)
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
  
  Object3D get parent
  {
    Object3D obj = new Object3D();
    obj._obj = _obj["parent"];
    return obj;
  }
  void set parent(Object3D parent)
  {
    _obj["parent"] = parent._obj;
  }
  
  List<Object3D> get children
  {
    List<JsObject> list = _obj["children"];
    List<Object3D> objList = [];
    
    for(int i = 0, l = list.length; i < l; i++)
    {
      Object3D obj = new Object3D();
      obj._obj = list[i];
      objList.add(obj);
    }
    
    return objList;
  }
  
  void set children(List<Object3D> children)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = children.length; i < l; i++)
    {
      list.add(children[i]._obj);
    }
    
    _obj["children"] = new JsObject.jsify(list);
  }
  
  Vector3 get position => new Vector3.fromJsObject(_obj["position"]);
  void set position(Vector3 position)
  {
    _obj["position"] = position._obj;
  }
  
  Vector3 get rotation => new Vector3.fromJsObject(_obj["rotation"]);
  void set rotation(Vector3 rotation)
  {
    _obj["rotation"] = rotation._obj;
  }
  
  String get eulerOrder => _obj["eulerOrder"];
  void set eulerOrder(String eulerOrder)
  {
    _obj["eulerOrder"] = eulerOrder;
  }
  
  Vector3 get scale => new Vector3.fromJsObject(_obj["scale"]);
  void set scale(Vector3 scale)
  {
    _obj["scale"] = scale._obj;
  }
  
  Vector3 get up => new Vector3.fromJsObject(_obj["up"]);
  void set up(Vector3 up)
  {
    _obj["up"] = up._obj;
  }
  
  Matrix4 get matrix => new Matrix4.fromJsObject(_obj["matrix"]);
  void set matrix(Matrix4 matrix)
  {
    _obj["matrix"] = matrix._obj;
  }
  
  Quaternion get quaternion => new Quaternion.fromJsObject(_obj["quaternion"]);
  void set quaternion(Quaternion quaternion)
  {
    _obj["quaternion"] = quaternion._obj;
  }
  
  bool get useQuaternion => _obj["quaternion"];
  void set useQuaternion(bool useQuaternion)
  {
    _obj["useQuaternion"] = useQuaternion;
  }
  
  num get renderDepth => _obj["renderDepth"];
  void set renderDepth(num renderDepth)
  {
    _obj["renderDepth"] = renderDepth;
  }
  
  bool get visible => _obj["visible"];
  void set visible(bool visible)
  {
    _obj["visible"] = visible;
  }
  
  bool get castShadow => _obj["castShadow"];
  void set castShadow(bool castShadow)
  {
    _obj["castShadow"] = castShadow;
  }
  
  bool get receiveShadow => _obj["receiveShadow"];
  void set receiveShadow(bool receiveShadow)
  {
    _obj["receiveShadow"] = receiveShadow;
  }
  
  bool get frustumCulled => _obj["frustumCulled"];
  void set frustumCulled(bool frustumCulled)
  {
    _obj["frustumCulled"] = frustumCulled;
  }
  
  bool get matrixAutoUpdate => _obj["matrixAutoUpdate"];
  void set matrixAutoUpdate(bool matrixAutoUpdate)
  {
    _obj["matrixAutoUpdate"] = matrixAutoUpdate;
  }
  
  bool get matrixWorldNeedsUpdate => _obj["matrixWorldNeedsUpdate"];
  void set matrixWorldNeedsUpdate(bool matrixWorldNeedsUpdate)
  {
    _obj["matrixWorldNeedsUpdate"] = matrixWorldNeedsUpdate;
  }
  
  Map get userData => _obj["userData"];
  void set userData(Map userData)
  {
    _obj["userData"] = new JsObject.jsify(userData);
  }
  
  Matrix4 get matrixWorld => new Matrix4.fromJsObject(_obj["matrixWorld"]);
  void set matrixWorld(Matrix4 matrixWorld)
  {
    _obj["matrixWorld"] = matrixWorld;
  }
  
  
  // == METHODS ==
  
  
  void applyMatrix(Matrix4 matrix) => _obj.callMethod("applyMatrix", [ matrix._obj ]);
  
  void translateX(num distance) => _obj.callMethod("translateX", [ distance ]);
  
  void translateY(num distance) => _obj.callMethod("translateY", [ distance ]);
  
  void translateZ(num distance) => _obj.callMethod("translateZ", [ distance ]);
  
  void localToWorld(Vector3 vector) => _obj.callMethod("localToWorld", [ vector._obj ]);
  
  void worldToLocal(Vector3 vector) => _obj.callMethod("worldToLocal", [ vector._obj ]);
  
  void lookAt(Vector3 vector) => _obj.callMethod("lookAt", [ vector._obj ]);
  
  void add(Object3D object) => _obj.callMethod("add", [ object._obj ]);
  
  void traverse(Function callback)
  {
    void callBackWrapper(JsObject objJS)
    {
      Object3D obj = new Object3D.fromJsObject(objJS);
      callback(objJS);
    }
    
    _obj.callMethod("traverse", [ callBackWrapper ]);
  }
  
  void updateMatrix() => _obj.callMethod("updateMatrix");
  
  void updateMatrixWorld(bool force) => _obj.callMethod("updateMatrixWorld", [ force ]);
  
  Object3D clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Object3D clone = new Object3D.fromJsObject(cloned);
    return clone;
  }
  
  Object3D getObjectByName(String name, bool recursive)
  {
    JsObject objectJS = _obj.callMethod("getObjectByName", [ name, recursive ]);
    if(objectJS == null)
      return null;
    
    return new Object3D.fromJsObject(objectJS);
  }
  
  Object3D getObjectById(int id, bool recursive)
  {
    JsObject objectJS = _obj.callMethod("getObjectById", [ id, recursive ]);
    if(objectJS == null)
      return null;
    
    return new Object3D.fromJsObject(objectJS);
  }
  
  void translateOnAxis(Vector3 axis, num distance) => _obj.callMethod("translateOnAxis", [ axis._obj, distance ]);
  
  void rotateOnAxis(Vector3 axis, num distance) => _obj.callMethod("rotateOnAxis", [ axis._obj, distance ]);
}