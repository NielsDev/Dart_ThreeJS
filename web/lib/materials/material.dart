part of ThreeJSWrapper;

class Material extends ThreeBase
{
  Material()
  {
    _obj = new JsObject(context["THREE"]["Material"]);
  }
  
  Material.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get id => _obj["id"];
  void set id(int id)
  {
    _obj["id"] = id;
  }
  
  String get name => _obj["name"];
  void set name(String name)
  {
    _obj["name"] = name;
  }
  
  num get opacity => _obj["opacity"];
  void set opacity(num opacity)
  {
    _obj["opacity"] = opacity;
  }
  
  bool get transparent => _obj["transparent"];
  void set transparent(bool transparent)
  {
    _obj["transparent"] = transparent;
  }
  
  int get blending => _obj["blending"];
  void set blending(int blending)
  {
    _obj["blending"] = blending;
  }
  
  int get blendDst => _obj["blendDst"];
  void set blendDst(int blendDst)
  {
    _obj["blendDst"] = blendDst;
  }
  
  int get blendEquation => _obj["blendEquation"];
  void set blendEquation(int blendEquation)
  {
    _obj["blendEquation"] = blendEquation;
  }
  
  bool get depthTest => _obj["depthTest"];
  void set depthTest(bool depthTest)
  {
    _obj["depthTest"];
  }
  
  bool get depthWrite => _obj["depthWrite"];
  void set depthWrite(bool depthWrite)
  {
    _obj["depthWrite"] = depthWrite;
  }
  
  bool get polygonOffset => _obj["polygonOffset"];
  void set polygonOffset(bool polygonOffset)
  {
    _obj["polygonOffset"] = polygonOffset;
  }
  
  num get polygonOffsetFactor => _obj["polygonOffsetFactor"];
  void set polygonOffsetFactor(num polygonOffsetFactor)
  {
    _obj["polygonOffsetFactor"] = polygonOffsetFactor;
  }
  
  num get polygonOffsetUnits => _obj["polygonOffsetUnits"];
  void set polygonOffsetUnits(num polygonOffsetUnits)
  {
    _obj["polygonOffsetUnits"] = polygonOffsetUnits;
  }
  
  num get alphaTest => _obj["alphaTest"];
  void set alphaTest(num alphaTest)
  {
    _obj["alphaTest"] = alphaTest;
  }
  
  bool get overdraw => _obj["overdraw"];
  void set overdraw(bool overdraw)
  {
    _obj["overdraw"] = overdraw;
  }
  
  bool get visible => _obj["visible"];
  void set visible(bool visible)
  {
    _obj["visible"] = visible;
  }
  
  int get side => _obj["side"];
  void set side(int side)
  {
    _obj["side"] = side;
  }
  
  bool get needsUpdate => _obj["needsUpdate"];
  void set needsUpdate(bool needsUpdate)
  {
    _obj["needsUpdate"] = needsUpdate;
  }
  
  
  // == METHODS ==
  
  Material clone([Material material])
  {
    JsObject cloned;
    
    if(material == null)
      cloned = _obj.callMethod("clone");
    else
      cloned = _obj.callMethod("clone", [ material._obj ]);
    
    Material clone = new Material.fromJsObject(cloned);
    return clone;
  }
  
  void dispose() => _obj.callMethod("dispose");
  
  void setValues(Map values) => _obj.callMethod("setValues", [ values ]);
}