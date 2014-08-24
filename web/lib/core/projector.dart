part of ThreeJSWrapper;

class Projector extends ThreeBase
{
  Projector()
  {
    _obj = new JsObject(context["THREE"]["Projector"]);
  }
  
  Projector.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  Vector3 projectVector(Vector3 vector, Camera camera)
  {
    JsObject vectorJS = vector._obj;
    JsObject cameraJS = camera._obj;
    JsObject returnedJS = _obj.callMethod("projectVector", [ vectorJS, cameraJS ]);
    Vector3 returned = new Vector3.fromJsObject(returnedJS);
    return returned;
  }
  
  Vector3 unprojectVector(Vector3 vector, Camera camera)
  {
    JsObject vectorJS = vector._obj;
    JsObject cameraJS = camera._obj;
    JsObject returnedJS = _obj.callMethod("unprojectVector", [ vectorJS, cameraJS ]);
    Vector3 returned = new Vector3.fromJsObject(returnedJS);
    return returned;
  }
  
  Raycaster pickingRay(Vector3 vector, Camera camera)
  {
    JsObject vectorJS = vector._obj;
    JsObject cameraJS = camera._obj;
    JsObject returnedJS = _obj.callMethod("pickingRay", [ vectorJS, cameraJS ]);
    Raycaster returned = new Raycaster.fromJsObject(returnedJS);
    return returned;
  }
  
  Map projectScene(Scene scene, Camera camera, bool sort)
  {
    JsObject sceneJS = scene._obj;
    JsObject cameraJS = camera._obj;
    return _obj.callMethod("projectScene", [ sceneJS, cameraJS, sort ]);
  }
}