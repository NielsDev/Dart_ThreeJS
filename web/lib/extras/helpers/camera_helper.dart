part of ThreeJSWrapper;

class CameraHelper extends Line
{
  CameraHelper(Camera camera)
  {
    _obj = new JsObject(context["THREE"]["CameraHelper"], [ camera._obj ]);
  }
  
  CameraHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get pointMap => _obj["pointMap"];
  void set pointMap(Map pointMap)
  {
    _obj["pointMap"] = new JsObject.jsify(pointMap);
  }
  
  Camera get camera => ThreeBase._fromCache(this, Camera, "camera");
  void set camera(Camera camera)
  {
    _obj["camera"] = camera._obj;
    _cache["camera"] = camera;
  }

  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}