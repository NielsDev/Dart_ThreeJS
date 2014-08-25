part of ThreeJSWrapper;

class DataTexture extends Texture
{
  DataTexture(Object data, int width, int height, int format, int type, TextureMapping mapping, int wrapS, int wrapT, int magFilter, int minFilter, int anisotropy)
  {
    _obj = new JsObject(context["THREE"]["DataTexture"], [ data, width, height, format, type, mapping._obj, wrapS, wrapT, magFilter, minFilter, anisotropy ]);
  }
  
  DataTexture.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  DataTexture clone([DataTexture texture])
  {
    JsObject cloned;
    
    if(texture == null)
      cloned = _obj.callMethod("clone");
    else
      cloned = _obj.callMethod("clone", [ texture._obj ]);
    
    DataTexture clone = new DataTexture.fromJsObject(cloned);
    return clone;
  }
}