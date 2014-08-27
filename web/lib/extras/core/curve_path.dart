part of ThreeJSWrapper;

// TODO: uses lists without a type because the documentation on the ThreeJS site is incomplete
//       so that means some methods cannot be used...

class CurvePath extends Curve
{
  CurvePath()
  {
    _obj = new JsObject(context["THREE"]["Curve"]);
  }
  
  CurvePath.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<Curve> get curves
  {
    List<JsObject> list = _obj["curves"];
    ThreeObjectList<Curve> listCurves = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listCurves.add(new Curve.fromjsObject(list[i]));
    
    return listCurves;
  }
  void set curves(List<Curve> curves)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = curves.length; i < l; i++)
      list.add(curves[i]._obj);
    
    _obj["curves"] = new JsObject.jsify(list);
  }
  
  List<Path> get bends
  {
    List<JsObject> list = _obj["bends"];
    ThreeObjectList<Path> listBends = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listBends.add(new Path.fromJsObject(list[i]));
    
    return listBends;
  }
  void set bends(List<Path> bends)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = bends.length; i < l; i++)
      list.add(bends[i]._obj);
    
    _obj["bends"] = new JsObject.jsify(list);
  }
  
  bool get autoClose => _obj["autoClose"];
  void set autoClose(bool autoClose)
  {
    _obj["autoClose"] = autoClose;
  }
  
  
  // == METHODS ==
  
  
  //List getWrapPoints(List oldPts, Path path) => _obj.callMethod("getWrapPoints", [ new JsObject.jsify(oldPts), path._obj ]);
  
  Geometry createPointsGeometry(int divisions) => new Geometry.fromJsObject(_obj.callMethod("createPointsGeometry", [ divisions ]));
  
  void addWrapPath(Path bendpath) => _obj.callMethod("addWrapPath", [ bendpath._obj ]);
  
  //Geometry createGeometry(List points) => _obj.callMethod("createGeometry", [ new JsObject.jsify(points) ]);
  
  void add(Curve curve) => _obj.callMethod("add", [ curve._obj ]);
  
  List getTransformedSpacedPoints(List segments, List<Path> bends)
  {
    List<JsObject> list = [];
        
    for(int i = 0, l = bends.length; i < l; i++)
      list.add(bends[i]._obj);
    
    return _obj.callMethod("getTransformedSpacedPoints", [ new JsObject.jsify(segments), new JsObject.jsify(list) ]);
  }
  
  Geometry createSpacedPointsGeometry(int divisions) => _obj.callMethod("createSpacedPointsGeometry", [ divisions ]);
  
  void closePath() => _obj.callMethod("closePath");
  
  Map getBoundingBox() => _obj.callMethod("getBoundingBox");
  
  //List getCurveLengths() => _obj.callMethod("getCurveLengths");
  
  /*List getTransformedPoints(List segments, List<Path> bends)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = bends.length; i < l; i++)
      list.add(bends[i]._obj);
    
    return _obj.callMethod("getTransformedPoints", [ new JsObject.jsify(segments), new JsObject.jsify(list) ]);
  }*/
  
  // Note: This method is not implemented in ThreeJS
  void checkConnection()
  {
  }
}