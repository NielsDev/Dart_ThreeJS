part of ThreeJSWrapper;

class Path extends CurvePath
{
  Path([List<Vector2> points])
  {
    List<JsObject> pointsJS = [];
    
    for(int i = 0, l = points.length; i < l; i++)
      pointsJS.add(points[i]._obj);
    
    _obj = new JsObject(context["THREE"]["Path"], [ new JsObject.jsify(pointsJS) ]);
  }
  
  Path.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get actions => _obj["actions"];
  void set actions(Map actions)
  {
    _obj["actions"] = new JsObject.jsify(actions);
  }
  
  
  // == METHODS ==
  
  
  void fromPoints(List<Vector2> vectors)
  {
    List<JsObject> vectorsJS = [];
    
    for(int i = 0, l = vectors.length; i < l; i++)
      vectorsJS.add(vectors[i]._obj);
    
    _obj.callMethod("fromPoints", [ vectorsJS ]);
  }
  
  void moveTo(num x, num y) => _obj.callMethod("moveTo", [ x, y ]);
  
  void lineTo(num x, num y) => _obj.callMethod("lineTo", [ x, y ]);
  
  void quadraticCurveTo(num aCPx, num aCPy, num aX, num aY) => _obj.callMethod("quadraticCurveTo", [ aCPx, aCPy, aX, aY ]);
  
  void bezierCurveTo(num aCP1x, num aCP1y, num aCP2x, num aCP2y, num aX, num aY) => _obj.callMethod("bezierCurveTo", [ aCP1x, aCP1y, aCP2x, aCP2y, aX, aY ]);
  
  void splineThru(List<Vector2> pts)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = pts.length; i < l; i++)
      list.add(pts[i]._obj);
    
    _obj.callMethod("splineThru", [ new JsObject.jsify(list) ]);
  }
  
  void arc(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle, num aClockwise) => _obj.callMethod("arc", [ aX, aY, aRadius, aStartAngle, aEndAngle, aClockwise ]);
  
  void absarc(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle, num aClockwise) => _obj.callMethod("absarc", [ aX, aY, aRadius, aStartAngle, aEndAngle, aClockwise ]);
  
  void ellipse(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle, num aClockwise) => _obj.callMethod("ellipse", [ aX, aY, aRadius, aStartAngle, aEndAngle, aClockwise ]);
  
  void absellipse(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle, num aClockwise) => _obj.callMethod("absellipse", [ aX, aY, aRadius, aStartAngle, aEndAngle, aClockwise ]);
  
  List<Shape> toShapes()
  {
    List<JsObject> list = _obj.callMethod("toShapes");
    List<Shape> listShapes = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listShapes.add(new Shape.fromJsObject(list[i]));
      
    return listShapes;
  }
}