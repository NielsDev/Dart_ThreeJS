part of ThreeJSWrapper;

class ShapeGeometry extends Geometry
{
  ShapeGeometry(List<Shape> shapes, Map options)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = shapes.length; i < l; i++)
      list.add(shapes[i]._obj);
    
    _obj = new JsObject(context["THREE"]["ShapeGeometry"], [ new JsObject.jsify(list), new JsObject.jsify(options) ]);
  }
  
  ShapeGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  void addShapeList(List<Shape> shapes, Map options)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = shapes.length; i < l; i++)
      list.add(shapes[i]._obj);
    
    _obj.callMethod("addShapeList", [ new JsObject.jsify(list), new JsObject.jsify(options) ]);
  }
  
  void addShape(Shape shape, Map options) => _obj.callMethod("addShape", [ shape._obj, new JsObject.jsify(options) ]);
}