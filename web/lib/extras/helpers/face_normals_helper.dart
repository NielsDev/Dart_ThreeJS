part of ThreeJSWrapper;

class FaceNormalsHelper extends Line
{
  FaceNormalsHelper(Object3D object, [num size, int hex, num lineWidth])
  {
    List args = [ object._obj ];
    
    if(size != null)        args.add(size);
    if(hex != null)         args.add(hex);
    if(lineWidth != null)   args.add(lineWidth);
    
    _obj = new JsObject(context["THREE"]["FaceNormalsHelper"], args);
  }
  
  FaceNormalsHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }

  
  // == METHODS ==
  
  
  void update() => _obj.callMethod("update");
}