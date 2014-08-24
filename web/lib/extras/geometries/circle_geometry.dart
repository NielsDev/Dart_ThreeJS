part of ThreeJSWrapper;

class CircleGeometry extends Geometry
{
  CircleGeometry([num radius, int segments, num thetaStart, num thetaLength])
  {
    List args = [];
    
    if(radius != null)      args.add(radius);
    if(segments != null)    args.add(segments);
    if(thetaStart != null)  args.add(thetaStart);
    if(thetaLength != null) args.add(thetaLength);
    
    _obj = new JsObject(context["THREE"]["CircleGeometry"], args);
  }
  
  CircleGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}