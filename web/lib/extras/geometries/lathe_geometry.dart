part of ThreeJSWrapper;

class LatheGeometry extends Geometry
{
  LatheGeometry(List<Vector3> points, [int segments, num phiStart, num phiLength])
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = points.length; i < l; i++)
      list.add(points[i]._obj);
    
    List args = [ list ];
    
    if(segments != null)    args.add(segments);
    if(phiStart != null)    args.add(phiStart);
    if(phiLength != null)   args.add(phiLength);
    
    _obj = new JsObject(context["THREE"]["LatheGeometry"], args);
  }
  
  LatheGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}