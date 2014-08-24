part of ThreeJSWrapper;

class RingGeometry extends Geometry
{
  RingGeometry([num innerRadius, num outerRadius, num thetaSegments, num phiSegments, num thetaStart, num thetaLength])
  {
    List args = [];
    
    if(innerRadius != null)   args.add(innerRadius);
    if(outerRadius != null)   args.add(outerRadius);
    if(thetaSegments != null)   args.add(thetaSegments);
    if(phiSegments != null)   args.add(phiSegments);
    if(thetaStart != null)   args.add(thetaStart);
    if(thetaLength != null)   args.add(thetaLength);
    
    _obj = new JsObject(context["THREE"]["RingGeometry"], args);
  }
  
  RingGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}