part of ThreeJSWrapper;

class TorusKnotGeometry extends Geometry
{
  TorusKnotGeometry([num radius, num tube, int radialSegments, int tubularSegments, num p, num q, num heightScale])
  {
    List args = [];
    
    if(radius != null)          args.add(radius);
    if(tube != null)            args.add(tube);
    if(radialSegments != null)  args.add(radialSegments);
    if(tubularSegments != null) args.add(tubularSegments);
    if(p != null)               args.add(p);
    if(q != null)               args.add(q);
    if(heightScale != null)     args.add(heightScale);
    
    _obj = new JsObject(context["THREE"]["TorusKnotGeometry"], args);
  }
  
  TorusKnotGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}