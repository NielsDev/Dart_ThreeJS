part of ThreeJSWrapper;

class LOD extends Object3D
{
  LOD()
  {
    _obj = new JsObject(context["THREE"]["LOD"]);
  }
  
  LOD.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<Object3D> get objects
  {
    List<JsObject> list = _obj["objects"];
    ThreeObjectList<Object3D> listObjects = new ThreeObjectList<Object3D>(list);
    
    for(int i = 0, l = list.length; i < l; i++)
      listObjects.addNoJS(new Object3D.fromJsObject(list[i]));
    
    return listObjects;
  }
  void set objects(List<Object3D> objects)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = objects.length; i < l; i++)
      list.add(objects[i]._obj);
      
    _obj["objects"] = new JsObject.jsify(list);
  }
  
  
  // == METHODS ==
  
  
  void addLevel(Object3D object, num distance) => _obj.callMethod("addLevel", [ object._obj, distance ]);
  
  Object3D getObjectForDistance(num distance) => new Object3D.fromJsObject(_obj.callMethod("getObjectForDistance", [ distance ]));
  
  void update(Camera camera) => _obj.callMethod("update", [ camera._obj ]);
}