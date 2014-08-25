part of ThreeJSWrapper;

class CubeTexture extends Texture
{
  CubeTexture(List<ImageElement> images, TextureMapping mapping, int wrapS, int wrapT, int magFilter, int minFilter, int format, int type, int anisotropy)
  {
    _obj = new JsObject(context["THREE"]["CubeTexture"], [ new JsObject.jsify(images), mapping._obj, wrapS, wrapT, magFilter, minFilter, format, type, anisotropy ]);
  }
  
  CubeTexture.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  
  // == METHODS ==
  
  
  CubeTexture clone([CubeTexture texture])
  {
    JsObject cloned;
    
    if(texture == null)
      cloned = _obj.callMethod("clone");
    else
      cloned = _obj.callMethod("clone", [ texture._obj ]);
    
    CubeTexture clone = new CubeTexture.fromJsObject(cloned);
    return clone;
  }
}