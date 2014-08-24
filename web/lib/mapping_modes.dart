part of ThreeJSWrapper;

class UVMapping extends ThreeBase
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

class CubeReflectionMapping extends ThreeBase
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

class CubeRefractionMapping extends ThreeBase
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

class SphericalReflectionMapping extends ThreeBase
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

class SphericalRefractionMapping extends ThreeBase
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