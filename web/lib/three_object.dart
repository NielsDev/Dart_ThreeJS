part of ThreeJSWrapper;

class ThreeObject extends ThreeBase
{
  // Reference to the JS object
  JsObject _obj;
  
  ThreeObject()
  {
  }
  
  // Every Three object is contructable from the reference to the JS object
  ThreeObject.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}