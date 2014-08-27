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
  
  Object3D get parent => ThreeBase._fromCache(this, Object3D, "parent");
  void set parent(Object3D parent)
  {
    _obj["parent"] = parent._obj;
    _cache["parent"] = parent;
  }
  
  List<Object3D> get children
  {
    List<JsObject> list = _obj["children"];
    ThreeObjectList<Object3D> objList = new ThreeObjectList<Object3D>(list);
    
    for(int i = 0, l = list.length; i < l; i++)
      objList.addNoJS(new Object3D.fromJsObject(list[i]));
    
    return objList;
  }
  
  void set children(List<Object3D> children)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = children.length; i < l; i++)
      list.add(children[i]._obj);
    
    _obj["children"] = new JsObject.jsify(list);
  }
  
  Vector3 get position => ThreeBase._fromCache(this, Vector3, "position");
  void set position(ThreeObject position)
  {
    _obj["position"] = position._obj;
    _cache["position"] = position;
  }
  
  Euler get rotation => ThreeBase._fromCache(this, Euler, "rotation");
  void set rotation(Euler rotation)
  {
    _obj["rotation"] = rotation._obj;
    _cache["rotation"] = rotation;
  }
  
  String get eulerOrder => _obj["eulerOrder"];
  void set eulerOrder(String eulerOrder)
  {
    _obj["eulerOrder"] = eulerOrder;
  }
  
  Vector3 get scale => ThreeBase._fromCache(this, Vector3, "scale");
  void set scale(Vector3 scale)
  {
    _obj["scale"] = scale._obj;
    _cache["scale"] = scale;
  }
  
  Vector3 get up => ThreeBase._fromCache(this, Vector3, "up");
  void set up(Vector3 up)
  {
    _obj["up"] = up._obj;
    _cache["up"] = up;
  }
  
  Matrix4 get matrix => ThreeBase._fromCache(this, Matrix4, "matrix");
  void set matrix(Matrix4 matrix)
  {
    _obj["matrix"] = matrix._obj;
    _cache["matrix"] = matrix;
  }
  
  Quaternion get quaternion => ThreeBase._fromCache(this, Quaternion, "quaternion");
  void set quaternion(Quaternion quaternion)
  {
    _obj["quaternion"] = quaternion._obj;
    _cache["quaternion"] = quaternion;
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
  
  Matrix4 get matrixWorld => ThreeBase._fromCache(this, Matrix4, "matrixWorld");
  void set matrixWorld(Matrix4 matrixWorld)
  {
    _obj["matrixWorld"] = matrixWorld._obj;
    _cache["matrixWorld"] = matrixWorld;
  }
  
  
  // == METHODS ==
  
  
  void applyMatrix(Matrix4 matrix) => _obj.callMethod("applyMatrix", [ matrix._obj ]);
  
  Object3D translateX(num distance)
  {
    _obj.callMethod("translateX", [ distance ]);
    return this;
  }
  
  Object3D translateY(num distance)
  {
    _obj.callMethod("translateY", [ distance ]);
    return this;
  }
  
  Object3D translateZ(num distance)
  {
    _obj.callMethod("translateZ", [ distance ]);
    return this;
  }
  
  Vector3 localToWorld(Vector3 vector)
  {
    _obj.callMethod("localToWorld", [ vector._obj ]);
    return vector;
  }
  
  Vector3 worldToLocal(Vector3 vector)
  {
    _obj.callMethod("worldToLocal", [ vector._obj ]);
    return vector;
  }
  
  void lookAt(Vector3 vector) => _obj.callMethod("lookAt", [ vector._obj ]);
  
  Object3D add(Object3D object)
  {
    _obj.callMethod("add", [ object._obj ]);
    return this;
  }
  
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
  
  Object3D translateOnAxis(Vector3 axis, num distance)
  {
    _obj.callMethod("translateOnAxis", [ axis._obj, distance ]);
    return this;
  }
  
  Object3D rotateOnAxis(Vector3 axis, num distance)
  {
    _obj.callMethod("rotateOnAxis", [ axis._obj, distance ]);
    return this;
  }
}