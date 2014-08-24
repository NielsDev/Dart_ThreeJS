part of ThreeJSWrapper;

class SphereGeometry extends Geometry
{
  SphereGeometry([num radius, int widthSegments, int heightSegments, num phiStart, num thetaStart, num thetaLength])
  {
    List args = [];
    
    if(radius != null)          args.add(radius);
    if(widthSegments != null)   args.add(widthSegments);
    if(heightSegments != null)  args.add(heightSegments);
    if(phiStart != null)        args.add(phiStart);
    if(thetaStart != null)      args.add(thetaStart);
    if(thetaLength != null)     args.add(thetaLength);
    
    _obj = new JsObject(context["THREE"]["SphereGeometry"], args);
  }
  
  SphereGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}