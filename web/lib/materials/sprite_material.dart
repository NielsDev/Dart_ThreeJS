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
  
  Texture get map => ThreeBase._fromCache(this, Texture, "map");
  void set map(Texture map)
  {
    _obj["map"] = map._obj;
    _cache["map"] = map;
  }
  
  Vector2 get uvScale => ThreeBase._fromCache(this, Vector2, "uvScale");
  void set uvScale(Vector2 uvScale)
  {
    _obj["uvScale"] = uvScale._obj;
    _cache["uvScale"] = uvScale;
  }
  
  num get sizeAttenuation => _obj["sizeAttenuation"];
  void set sizeAttenuation(num sizeAttenuation)
  {
    _obj["sizeAttenuation"] = sizeAttenuation;
  }
  
  Color get color => ThreeBase._fromCache(this, Color, "color");
  void set color(Color color)
  {
    _obj["color"] = color._obj;
    _cache["color"] = color;
  }
  
  Vector2 get uvOffset => ThreeBase._fromCache(this, Vector2, "uvOffset");
  void set uvOffset(Vector2 uvOffset)
  {
    _obj["uvOffset"] = uvOffset._obj;
    _cache["uvOffset"] = uvOffset;
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
  
  Vector2 get alignment => ThreeBase._fromCache(this, Vector2, "alignment");
  void set alignment(Vector2 alignment)
  {
    _obj["alignment"] = alignment._obj;
    _cache["alignment"] = alignment;
  }
  
  
  // == METHODS ==
  
  
  SpriteMaterial clone([SpriteMaterial material])
  {
    JsObject cloned = _obj.callMethod("clone");
    SpriteMaterial clone = new SpriteMaterial.fromJsObject(cloned);
    return clone;
  }
}