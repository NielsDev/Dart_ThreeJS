part of ThreeJSWrapper;

class ThreeBase
{
  // Reference to the JS object
  JsObject _obj;
  
  ThreeBase()
  {
  }
  
  // Every Three object is contructable from the reference to the JS object
  ThreeBase.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}