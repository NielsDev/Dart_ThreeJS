part of ThreeJSWrapper;

// TODO: uses lists without a type because the documentation on the ThreeJS site is incomplete
//       so that means some methods cannot be used...

class Curve extends ThreeObject
{
  Curve()
  {
    _obj = new JsObject(context["THREE"]["Curve"]);
  }
  
  Curve.fromjsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  ThreeObject getPoint(num t) => new ThreeObject.fromJsObject(_obj.callMethod("getPoint", [ t ]));
  
  ThreeObject getPointAt(num t) => new ThreeObject.fromJsObject(_obj.callMethod("getPointAt", [ t ]));
  
  List getPoints(int divisions) => _obj.callMethod("getPoints", [ divisions ]);
  
  List getSpacedPoints(int divisions) => _obj.callMethod("getSpacedPoints", [ divisions ]);
  
  Map getLength() => _obj.callMethod("getLength");
  
  List<Map> getLengths(int divisions) => _obj.callMethod("getLengths");
  
  void updateArcLengths() => _obj.callMethod("updateArcLengths");
  
  num getUtoTmapping(num u, num distance) => _obj.callMethod("getUtoTmapping", [ u, distance ]);
  
  ThreeObject getTangent(num t) => new ThreeObject.fromJsObject(_obj.callMethod("getTangent", [ t ]));
  
  ThreeObject getTangentAt(num u) => new ThreeObject.fromJsObject(_obj.callMethod("getTangentAt", [ u ]));
}