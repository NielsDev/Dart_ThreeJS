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
  
  Vector3 get scaleWorld => new Vector3.fromJsObject(_obj["scaleWorld"]);
  void set scaleWorld(Vector3 scaleWorld)
  {
    _obj["scaleWorld"] = scaleWorld._obj;
  }
  
  Vector3 get translationWorld => new Vector3.fromJsObject(_obj["translationWorld"]);
  void set translationWorld(Vector3 translationWorld)
  {
    _obj["translationWorld"] = translationWorld._obj;
  }
  
  Quaternion get rotationWorld => new Quaternion.fromJsObject(_obj["rotationWorld"]);
  void set rotationWorld(Quaternion rotationWorld)
  {
    _obj["rotationWorld"] = rotationWorld._obj;
  }
  
  Vector3 get translationObject => new Vector3.fromJsObject(_obj["translationObject"]);
  void set translationObject(Vector3 translationObject)
  {
    _obj["translationObject"] = translationObject._obj;
  }
  
  Vector3 get scaleObject => new Vector3.fromJsObject(_obj["scaleObject"]);
  void set scaleObject(Vector3 scaleObject)
  {
    _obj["scaleObject"] = scaleObject._obj;
  }
  
  Quaternion get rotationObject => new Quaternion.fromJsObject(_obj["rotationObject"]);
  void set rotationObject(Quaternion rotationObject)
  {
    _obj["rotationObject"] = rotationObject._obj;
  }
}