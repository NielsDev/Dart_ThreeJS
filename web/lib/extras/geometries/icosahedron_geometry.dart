part of ThreeJSWrapper;

class IcosahedronGeometry extends Geometry
{
  IcosahedronGeometry([num radius, num detail])
  {
    List args = [];
    
    if(radius != null)  args.add(radius);
    if(detail != null)  args.add(detail);
    
    _obj = new JsObject(context["THREE"]["IcosahedronGeometry"], args);
  }
  
  IcosahedronGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}