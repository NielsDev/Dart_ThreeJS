part of ThreeJSWrapper;

class TorusGeometry extends Geometry
{
  TorusGeometry([num radius, num tube, int radialSegments, int tubularSegments, num arc])
  {
    List args = [];
    
    if(radius != null)          args.add(radius);
    if(tube != null)            args.add(tube);
    if(radialSegments != null)  args.add(radialSegments);
    if(tubularSegments != null) args.add(tubularSegments);
    if(arc != null)             args.add(arc);
    
    _obj = new JsObject(context["THREE"]["TorusGeometry"], args);
  }
  
  TorusGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}