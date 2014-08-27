part of ThreeJSWrapper;

class Spline extends ThreeObject
{
  Spline(Map points)
  {
    _obj = new JsObject(context["THREE"]["Spline"], [ points ]);
  }
  
  Spline.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get points => _obj["points"];
  void set point(Map points)
  {
    _obj["points"] = new JsObject.jsify(points);
  }
  
  
  // == METHODS ==
  
  
  void initFromArray(List<List<num>> a) => _obj.callMethod("initFromArray", [ new JsObject.jsify(a) ]);
  
  Map getPoint(num k) => _obj.callMethod("getPoint", [ k ]);
  
  List<List<num>> getControlPointsArray() => _obj.callMethod("getControlPointsArray");
  
  Map getLength(int nSubDivisions) => _obj.callMethod("getLength", [ nSubDivisions ]);
  
  void reparametrizeByArcLength(num samplingCoef) => _obj.callMethod("reparametrizeByArcLength", [ samplingCoef ]);
}