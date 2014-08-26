part of ThreeJSWrapper;

class SpriteCanvasMaterial extends Material
{
  SpriteCanvasMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["SpriteCanvasMaterial"]);
    }
    else
    {
      if(parameters["program"] != null)
      {
        Function program = parameters["program"];
        void programWrapper(CanvasRenderingContext2D context, Color color) => program(context, color._obj);
      }
      
      _obj = new JsObject(context["THREE"]["SpriteCanvasMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  SpriteCanvasMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Color get color => ThreeBase._fromCache(this, Color, "color");
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
  
  
  // == METHODS ==
  
  
  SpriteCanvasMaterial clone([SpriteCanvasMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    SpriteCanvasMaterial clone = new SpriteCanvasMaterial.fromJsObject(cloned);
    return clone;
  }
}