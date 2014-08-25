part of ThreeJSWrapper;

class ImageUtils
{
  static JsObject _context = context["THREE"]["ImageUtils"];
  
  static String get crossOrigin => _context["crossOrigin"];
  static void set crossOrigin(String crossOrigin)
  {
    _context["crossOrigin"] = crossOrigin;
  }
  
  
  // == METHODS ==
  
  
  static DataTexture generateDataTexture(int width, int height, int color) => new DataTexture.fromJsObject(_context.callMethod("generateDataTexture", [ width, height, color ]));
  
  static CompressedTexture parseDDS(String buffer, [bool loadMipmaps = true]) => new CompressedTexture.fromJsObject(_context.callMethod("parseDDS", [ buffer, loadMipmaps ]));
  
  // loadCompressedTexture has been removed from ThreeJS
  
  // loadCompressedTextureCube has been removed from ThreeJS
  
  static Texture loadTexture(String url, TextureMapping mapping, [Function onLoad, Function onError])
  {
    List args = [ url, mapping._obj ];
    
    if(onLoad != null)
    {
      void onLoadWrapper(JsObject textureJS)
      {
        Texture texture = new Texture.fromJsObject(textureJS);
        onLoad(texture);
      }
      args.add(onLoadWrapper);
    }
    
    if(onError != null)
      args.add(onError);
    
    JsObject textureJS = _context.callMethod("loadTexture", args);
    Texture texture = new Texture.fromJsObject(textureJS);
    return texture;
  }
  
  static CanvasElement getNormalMap(ImageElement image, int depth) => _context.callMethod("getNormalMap", [ image, depth ]);
  
  static CubeTexture loadTextureCube(List<String> array, TextureMapping mapping, [Function onLoad, Function onError])
  {
    List args = [ new JsObject.jsify(array), mapping._obj ];
    
    if(onLoad != null)
    {
      void onLoadWrapper(JsObject cubeTextureJS)
      {
        CubeTexture cubeTexture = new CubeTexture.fromJsObject(cubeTextureJS);
        onLoad(cubeTexture);        
      }
      args.add(onLoadWrapper);
    }
    
    if(onError != null)
      args.add(onError);
    
    JsObject cubeTextureJS = _context.callMethod("loadTextureCube", args);
    CubeTexture cubeTexture = new CubeTexture.fromJsObject(cubeTextureJS);
    return cubeTexture;
  }
}