part of ThreeJSWrapper;

class Gyroscope extends Object3D
{
  Gyroscope()
  {
    _obj = new JsObject(context["THREE"]["Gyroscope"]);
  }
  
  Gyroscope.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Vector3 get scaleWorld => ThreeBase._fromCache(this, Vector3, "scaleWorld");
  void set scaleWorld(Vector3 scaleWorld)
  {
    _obj["scaleWorld"] = scaleWorld._obj;
  }
  
  Vector3 get translationWorld => ThreeBase._fromCache(this, Vector3, "translationWorld");
  void set translationWorld(Vector3 translationWorld)
  {
    _obj["translationWorld"] = translationWorld._obj;
  }
  
  Quaternion get rotationWorld => ThreeBase._fromCache(this, Quaternion, "rotationWorld");
  void set rotationWorld(Quaternion rotationWorld)
  {
    _obj["rotationWorld"] = rotationWorld._obj;
  }
  
  Vector3 get translationObject => ThreeBase._fromCache(this, Vector3, "translationObject");
  void set translationObject(Vector3 translationObject)
  {
    _obj["translationObject"] = translationObject._obj;
  }
  
  Vector3 get scaleObject => ThreeBase._fromCache(this, Vector3, "scaleObject");
  void set scaleObject(Vector3 scaleObject)
  {
    _obj["scaleObject"] = scaleObject._obj;
  }
  
  Quaternion get rotationObject => ThreeBase._fromCache(this, Quaternion, "rotationObject");
  void set rotationObject(Quaternion rotationObject)
  {
    _obj["rotationObject"] = rotationObject._obj;
  }
}