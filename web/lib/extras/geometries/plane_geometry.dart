part of ThreeJSWrapper;

class PlaneGeometry extends Geometry
{
  PlaneGeometry(int width, int height, [int widthSegments, int heightSegments])
  {
    List args = [ width, height ];
    
    if(widthSegments != null)   args.add(widthSegments);
    if(heightSegments != null)  args.add(heightSegments);
    
    _obj = new JsObject(context["THREE"]["PlaneGeometry"], args);
  }
  
  PlaneGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}