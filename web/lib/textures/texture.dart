part of ThreeJSWrapper;

class Texture extends EventDispatcher
{
  Texture([ImageElement image, TextureMapping mapping, int wrapS, int wrapT, int magFilter, int minFilter, int format, int type, int anisotropy])
  {
    List args = [];
    
    if(image != null)       args.add(image);
    if(mapping != null)     args.add(mapping);
    if(wrapS != null)       args.add(wrapS);
    if(wrapT != null)       args.add(wrapT);
    if(magFilter != null)   args.add(magFilter);
    if(minFilter != null)   args.add(minFilter);
    if(format != null)      args.add(format);
    if(type != null)        args.add(type);
    if(anisotropy != null)  args.add(anisotropy);
    
    _obj = new JsObject(context["THREE"]["Texture"], args);
  }
  
  Texture.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  ImageElement get image => _obj["image"];
  void set image(ImageElement image)
  {
    _obj["image"] = image;
  }
  
  TextureMapping get mapping => new TextureMapping.fromJsObject(_obj["mapping"]);
  void set mapping(TextureMapping mapping)
  {
    _obj["mapping"] = mapping._obj;
  }
  
  int get wrapS => _obj["wrapS"];
  void set wrapS(int wrapS)
  {
    _obj["wrapS"] = wrapS;
  }
  
  int get wrapT => _obj["wrapT"];
  void set wrapT(int wrapT)
  {
    _obj["wrapT"] = wrapT;
  }
  
  int get magFilter => _obj["magFilter"];
  void set magFilter(int magFilter)
  {
    _obj["magFilter"] = magFilter;
  }
  
  int get minFilter => _obj["minFilter"];
  void set minFilter(int minFilter)
  {
    _obj["minFilter"] = minFilter;
  }
  
  int get format => _obj["format"];
  void set format(int format)
  {
    _obj["format"] = format;
  }
  
  int get type => _obj["type"];
  void set type(int type)
  {
    _obj["type"] = type;
  }
  
  int get anisotropy => _obj["anisotropy"];
  void set anisotropy(int anisotropy)
  {
    _obj["anisotropy"] = anisotropy;
  }
  
  bool get needsUpdate => _obj["needsUpdate"];
  void set needsUpdate(bool needsUpdate)
  {
    _obj["needsUpdate"] = needsUpdate;
  }
  
  Vector2 get repeat => new Vector2.fromJsObject(_obj["repeat"]);
  void set repeat(Vector2 repeat)
  {
    _obj["repeat"] = repeat._obj;
  }
  
  Vector2 get offset => new Vector2.fromJsObject(_obj["offset"]);
  void set offset(Vector2 offset)
  {
    _obj["offset"] = offset._obj;
  }
  
  String get name => _obj["name"];
  void set name(String name)
  {
    _obj["name"] = name;
  }
  
  bool get generateMipmaps => _obj["generateMipmaps"];
  void set generateMipmaps(bool generateMipmaps)
  {
    _obj["generateMipmaps"] = generateMipmaps;
  }
  
  bool get flipY => _obj["flipY"];
  void set flipY(bool flipY)
  {
    _obj["flipY"] = flipY;
  }
  
  List<Map> get mipmaps => _obj["mipmaps"];
  void set mipmaps(List<Map> mipmaps)
  {
    _obj["mipmaps"] = new JsObject.jsify(mipmaps);
  }
  
  int get unpackAlignment => _obj["unpackAlignment"];
  void set unpackAlignment(int unpackAlignment)
  {
    _obj["unpackAlignment"] = unpackAlignment;
  }
  
  bool get premultiplyAlpha => _obj["premultiplyAlpha"];
  void set premultiplyAlpha(bool premultiplyAlpha)
  {
    _obj["premultiplyAlpha"] = premultiplyAlpha;
  }
  
  Function get onUpdate => _obj["onUpdate"];
  void set onUpdate(Function onUpdate)
  {
    _obj["onUpdate"] = onUpdate;
  }
  
  int get id => _obj["id"];
  
  
  // == METHODS ==
  
  
  Texture clone(Texture texture)
  {
    JsObject cloned = _obj.callMethod("clone", [ texture._obj ]);
    Texture clone = new Texture.fromJsObject(cloned);
    return clone;
  }
  
  void dispose() => _obj.callMethod("dispose");
}