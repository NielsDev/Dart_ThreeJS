part of ThreeJSWrapper;

class OctahedronGeometry extends Geometry
{
  OctahedronGeometry([num radius, num detail])
  {
    List args = [];
    
    if(radius != null)  args.add(radius);
    if(detail != null)  args.add(detail);
    
    _obj = new JsObject(context["THREE"]["OctahedronGeometry"], args);
  }
  
  OctahedronGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}