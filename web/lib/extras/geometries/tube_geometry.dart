part of ThreeJSWrapper;

class TubeGeometry extends Geometry
{
  TubeGeometry(Path path, [int segments, num radius, int radialSegments, bool closed])
  {
    List args = [ path._obj ];
    
    if(segments != null)        args.add(segments);
    if(radius != null)          args.add(radius);
    if(radialSegments != null)  args.add(radialSegments);
    if(closed != null)          args.add(closed);
    
    _obj = new JsObject(context["THREE"]["TubeGeometry"], args);
  }
  
  TubeGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}