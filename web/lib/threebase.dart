part of ThreeJSWrapper;

class ThreeBase
{
  // Reference to the JS object
  JsObject _obj;
  
  ThreeBase()
  {
  }
  
  ThreeBase.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}