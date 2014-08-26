part of ThreeJSWrapper;

class SpotLight extends Light
{
  SpotLight(int hex, num intensity, num distance, num angle, num exponent)
  {
    _obj = new JsObject(context["THREE"]["SpotLight"], [ hex, intensity, distance, angle, exponent ]);
  }
  
  SpotLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Object3D get target => ThreeBase._fromCache(this, Object3D, "target");
  void set target(Object3D target)
  {
    _obj["target"] = target._obj;
    _cache["target"] = target;
  }
  
  num get intensity => _obj["intensity"];
  void set intensity(num intensity)
  {
    _obj["intensity"] = intensity;
  }
  
  num get distance => _obj["distance"];
  void set distance(num distance)
  {
    _obj["distance"] = distance;
  }
  
  num get angle => _obj["angle"];
  void set angle(num angle)
  {
    _obj["angle"] = angle;
  }
  
  num get exponent => _obj["exponent"];
  void set exponent(num exponent)
  {
    _obj["exponent"] = exponent;
  }
  
  bool get castShadow => _obj["castShadow"];
  void set castShadow(bool castShadow)
  {
    _obj["castShadow"] = castShadow;
  }
  
  bool get onlyShadow => _obj["onlyShadow"];
  void set onlyShadow(bool onlyShadow)
  {
    _obj["onlyShadow"] = onlyShadow;
  }
  
  num get shadowCameraNear => _obj["shadowCameraNear"];
  void set shadowCameraNear(num shadowCameraNear)
  {
    _obj["shadowCameraNear"] = shadowCameraNear;
  }
  
  num get shadowCameraFar => _obj["shadowCameraFar"];
  void set shadowCameraFar(num shadowCameraFar)
  {
    _obj["shadowCameraFar"] = shadowCameraFar;
  }
  
  num get shadowCameraFov => _obj["shadowCameraFov"];
  void set shadowCameraFov(num shadowCameraFov)
  {
    _obj["shadowCameraFov"] = shadowCameraFov;
  }
  
  bool get shadowCameraVisible => _obj["shadowCameraVisible"];
  void set shadowCameraVisible(bool shadowCameraVisible)
  {
    _obj["shadowCameraVisible"] = shadowCameraVisible;
  }
  
  num get shadowBias => _obj["shadowBias"];
  void set shadowBias(num shadowBias)
  {
    _obj["shadowBias"] = shadowBias;
  }
  
  num get shadowDarkness => _obj["shadowDarkness"];
  void set shadowDarkness(num shadowDarkness)
  {
    _obj["shadowDarkness"] = shadowDarkness;
  }
  
  int get shadowMapWidth => _obj["shadowMapWidth"];
  void set shadowMapWidth(int shadowMapWidth)
  {
    _obj["shadowMapWidth"] = shadowMapWidth;
  }
  
  int get shadowMapHeight => _obj["shadowMapHeight"];
  void set shadowMapHeight(int shadowMapHeight)
  {
    _obj["shadowMapHeight"] = shadowMapHeight;
  }
  
  // Find out what the types are for these
  // TODO: shadowMap
  // TODO: shadowMapSize
  // TODO: shadowCamera
  // TODO: shadowMatrix
}