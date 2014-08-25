part of ThreeJSWrapper;

class SpriteMaterial extends Material
{
  SpriteMaterial([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["SpriteMaterial"]);
    }
    else
    {
      _obj = new JsObject(context["THREE"]["SpriteMaterial"], [ new JsObject.jsify(parameters) ]);
    }
  }
  
  SpriteMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Texture get map => new Texture.fromJsObject(_obj["map"]);
  void set map(Texture map)
  {
    _obj["map"] = map._obj;
  }
  
  Vector2 get uvScale => new Vector2.fromJsObject(_obj["uvScale"]);
  void set uvScale(Vector2 uvScale)
  {
    _obj["uvScale"] = uvScale._obj;
  }
  
  num get sizeAttenuation => _obj["sizeAttenuation"];
  void set sizeAttenuation(num sizeAttenuation)
  {
    _obj["sizeAttenuation"] = sizeAttenuation;
  }
  
  Color get color => new Color.fromJsObject(_obj["color"]);
  void set color(Color color)
  {
    _obj["color"] = color._obj;
  }
  
  Vector2 get uvOffset => new Vector2.fromJsObject(_obj["uvOffset"]);
  void set uvOffset(Vector2 uvOffset)
  {
    _obj["uvOffset"] = uvOffset._obj;
  }
  
  bool get fog => _obj["fog"];
  void set fog(bool fog)
  {
    _obj["fog"] = fog;
  }
  
  bool get useScreenCoordinates => _obj["useScreenCoordinates"];
  void set useScreenCoordinates(bool useScreenCoordinates)
  {
    _obj["useScreenCoordinates"] = useScreenCoordinates;
  }
  
  bool get scaleByViewport => _obj["scaleByViewport"];
  void set scaleByViewport(bool scaleByViewport)
  {
    _obj["scaleByViewport"] = scaleByViewport;
  }
  
  Vector2 get alignment => new Vector2.fromJsObject(_obj["alignment"]);
  void set alignment(Vector2 alignment)
  {
    _obj["alignment"] = alignment._obj;
  }
  
  
  // == METHODS ==
  
  
  SpriteMaterial clone([SpriteMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    SpriteMaterial clone = new SpriteMaterial.fromJsObject(cloned);
    return clone;
  }
}