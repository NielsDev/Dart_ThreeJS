part of ThreeJSWrapper;

class PolyhedronGeometry extends Geometry
{
  PolyhedronGeometry(List<num> vertices, List<num> indices, [num radius, num detail])
  {
    List args = [ new JsObject.jsify(vertices), new JsObject.jsify(indices) ];
    
    if(radius != null)  args.add(radius);
    if(detail != null)  args.add(detail);
    
    _obj = new JsObject(context["THREE"]["PolyhedronGeometry"], args);
  }
  
  PolyhedronGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}