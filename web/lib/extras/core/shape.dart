part of ThreeJSWrapper;

// TODO: uses lists without a type because the documentation on the ThreeJS site is incomplete
//       so that means some methods cannot be used...

class Shape extends Path
{
  Shape()
  {
    _obj = new JsObject(context["THREE"]["Shape"]);
  }
  
  Shape.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<CurvePath> get holes
  {
    List<JsObject> list = _obj["holes"];
    ThreeObjectList<CurvePath> listHoles = new ThreeObjectList<CurvePath>(list);
    
    for(int i = 0, l = list.length; i < l; i++)
      listHoles.addNoJS(new CurvePath.fromJsObject(list[i]));
    
    return listHoles;
  }
  void set holes(List<CurvePath> holes)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = holes.length; i < l; i++)
      list.add(holes[i]._obj);
    
    _obj["holes"] = new JsObject.jsify(list);
  }
  
  
  // == METHODS ==
  
  
  Geometry makeGeometry(Map options) => new Geometry.fromJsObject(_obj.callMethod("makeGeometry", [ new JsObject.jsify(options) ]));
  
  //Map extractAllPoints(int divisions) => _obj.callMethod("extractAllPoints", [ divisions ]);
  
  ExtrudeGeometry extrude(Map options) => new ExtrudeGeometry.fromJsObject(_obj.callMethod("extrude", [ new JsObject.jsify(options) ]));
  
  //Map extractPoints(int divisions) => _obj.callMethod("extractPoints", [ divisions ]);
  
  //Map extractAllSpacedPoints(int divisions) => _obj.callMethod("extractAllSpacedPoints", [ divisions ]);
  
  //Map getPointsHoles(int divisions) => _obj.callMethod("getPointsHoles", [ divisions ]);
  
  //Map getSpacedPointsHoles(int divisions) => _obj.callMethod("getSpacedPointsHoles", [ divisions ]);
}