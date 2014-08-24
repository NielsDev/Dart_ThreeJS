part of ThreeJSWrapper;

class CylinderGeometry extends Geometry
{
  CylinderGeometry(num radiusTop, num radiusBottom, num height, int radiusSegments, int heightSegments, bool openEnded)
  {
    List args = [];
    
    if(radiusTop != null)       args.add(radiusTop);
    if(radiusBottom != null)    args.add(radiusBottom);
    if(height != null)          args.add(height);
    if(radiusSegments != null)  args.add(radiusSegments);
    if(heightSegments != null)  args.add(heightSegments);
    if(openEnded != null)       args.add(openEnded);
    
    _obj = new JsObject(context["THREE"]["CylinderGeometry"], args);
  }
  
  CylinderGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}