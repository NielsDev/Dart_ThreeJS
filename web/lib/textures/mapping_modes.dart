part of ThreeJSWrapper;

class TextureMapping extends ThreeBase
{
  TextureMapping()
  {
  }
  
  TextureMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}

class UVMapping extends TextureMapping
{
  UVMapping()
  {
    _obj = new JsObject(context["THREE"]["UVMapping"]);
  }
  
  UVMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}

class CubeReflectionMapping extends TextureMapping
{
  CubeReflectionMapping()
  {
    _obj = new JsObject(context["THREE"]["CubeReflectionMapping"]);
  }
  
  CubeReflectionMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}

class CubeRefractionMapping extends TextureMapping
{
  CubeRefractionMapping()
  {
    _obj = new JsObject(context["THREE"]["CubeRefractionMapping"]);
  }
  
  CubeRefractionMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}

class SphericalReflectionMapping extends TextureMapping
{
  SphericalReflectionMapping()
  {
    _obj = new JsObject(context["THREE"]["SphericalReflectionMapping"]);
  }
  
  SphericalReflectionMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}

class SphericalRefractionMapping extends TextureMapping
{
  SphericalRefractionMapping()
  {
    _obj = new JsObject(context["THREE"]["SphericalRefractionMapping"]);
  }
  
  SphericalRefractionMapping.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}