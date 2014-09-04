part of ThreeJSWrapper;

class ArrowHelper extends ThreeObject
{
  ArrowHelper(Vector3 dir, Vector3 origin, [num length, int hex, num headLength, num headWidth])
  {
    List args = [ dir._obj, origin._obj ];
    
    if(length != null)      args.add(length);
    if(hex != null)         args.add(hex);
    if(headLength != null)  args.add(headLength);
    if(headWidth != null)   args.add(headWidth);
    
    _obj = new JsObject(context["THREE"]["ArrowHelper"], args);
  }
  
  ArrowHelper.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Line get line => ThreeBase._fromCache(this, Line, "line");
  void set line(Line line)
  {
    _obj["line"] = line._obj;
    _cache["line"] = line;
  }
  
  Mesh get cone => ThreeBase._fromCache(this, Mesh, "cone");
  void set cone(Mesh cone)
  {
    _obj["cone"] = cone._obj;
    _cache["cone"] = cone;
  }
  
  
  // == METHODS ==
  
  
  void setColor(int hex) => _obj.callMethod("setColor", [ hex ]);
  void setLength(num length) => _obj.callMethod("setLength", [ length ]);
  void setDirection(Vector3 dir) => _obj.callMethod("setDirection", [ dir._obj ]);
}