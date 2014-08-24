part of ThreeJSWrapper;

class BoxGeometry extends Geometry
{
  BoxGeometry(num width, num height, num depth, [int widthSegments, int heightSegments, int depthSegments])
  {
    int widthSegmentsParam = (widthSegments == null) ? 1 : widthSegments;
    int heightSegmentsParam = (heightSegments == null) ? 1 : heightSegments;
    int depthSegmentsParam = (depthSegments == null) ? 1 : depthSegments;
    
    _obj = new JsObject(context["THREE"]["BoxGeometry"], [ width, height, depth, widthSegmentsParam, heightSegmentsParam, depthSegmentsParam ]);
  }
  
  BoxGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get widthSegments => _obj["widthSegments"];
  void set widthSegments(num widthSegments)
  {
    _obj["widthSegments"] = widthSegments;
  }
  
  num get heightSegments => _obj["heightSegments"];
  void set heightSegments(num heightSegments)
  {
    _obj["heightSegments"] = heightSegments;
  }
    
  num get depthSegments => _obj["depthSegments"];
  void set depthSegments(num depthSegments)
  {
    _obj["depthSegments"] = depthSegments;
  }
}