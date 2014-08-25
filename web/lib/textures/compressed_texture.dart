part of ThreeJSWrapper;

class CompressedTexture extends Texture
{
  CompressedTexture(List<Map> mipmaps, int width, int height, int format, int type, TextureMapping mapping, int wrapS, int wrapT, int magFilter, int minFilter, int anisotropy)
  {
    _obj = new JsObject(context["THREE"]["CompressedTexture"], [ new JsObject.jsify(mipmaps), width, height, format, type, mapping._obj, wrapS, wrapT, magFilter, minFilter, anisotropy ]);
  }
  
  CompressedTexture.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}