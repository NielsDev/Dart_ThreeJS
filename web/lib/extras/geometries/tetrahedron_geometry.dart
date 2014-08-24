part of ThreeJSWrapper;

class TetrahedronGeometry extends Geometry
{
  TetrahedronGeometry([num radius, num detail])
  {
    List args = [];
    
    if(radius != null)  args.add(radius);
    if(detail != null)  args.add(detail);
    
    _obj = new JsObject(context["THREE"]["TetrahedronGeometry"], args);
  }
  
  TetrahedronGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}