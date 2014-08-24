part of ThreeJSWrapper;

class DirectionalLight extends Light
{
  DirectionalLight(int hex, num intensity)
  {
    _obj = new JsObject(context["THREE"]["DirectionalLight"], [ hex, intensity ]);
  }
  
  DirectionalLight.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Object3D get target => new Object3D.fromJsObject(_obj["target"]);
  void set target(Object3D target)
  {
    _obj["target"] = target._obj;
  }
  
  num get intensity => _obj["intensity"];
  void set intensity(num intensity)
  {
    _obj["intensity"] = intensity;
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
  
  num get shadowCameraLeft => _obj["shadowCameraLeft"];
  void set shadowCameraLeft(num shadowCameraLeft)
  {
    _obj["shadowCameraLeft"] = shadowCameraLeft;
  }
  
  num get shadowCameraRight => _obj["shadowCameraRight"];
  void set shadowCameraRight(num shadowCameraRight)
  {
    _obj["shadowCameraRight"] = shadowCameraRight;
  }
  
  num get shadowCameraTop => _obj["shadowCameraTop"];
  void set shadowCameraTop(num shadowCameraTop)
  {
    _obj["shadowCameraTop"] = shadowCameraTop;
  }
  
  num get shadowCameraBottom => _obj["shadowCameraBottom"];
  void set shadowCameraBottom(num shadowCameraBottom)
  {
    _obj["shadowCameraBottom"] = shadowCameraBottom;
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
  
  bool get shadowCascade => _obj["shadowCascade"];
  void set shadowCascade(bool shadowCascade)
  {
    _obj["shadowCascade"] = shadowCascade;
  }
  
  Vector3 get shadowCascadeOffset => new Vector3.fromJsObject(_obj["shadowCascadeOffset"]);
  
  int get shadowCascadeCount => _obj["shadowCascadeCount"];
  void set shadowCascadeCount(int shadowCascadeCount)
  {
    _obj["shadowCascadeCount"] = shadowCascadeCount;
  }
  
  List<num> get shadowCascadeBias => _obj["shadowCascadeBias"];
  void set shadowCascadeBias(List<num> shadowCascadeBias)
  {
    _obj["shadowCascadeBias"] = new JsObject.jsify(shadowCascadeBias);
  }
  
  List<int> get shadowCascadeWidth => _obj["shadowCascadeWidth"];
  void set shadowCascadeWidth(List<int> shadowCascadeWidth)
  {
    _obj["shadowCascadeWidth"] = new JsObject.jsify(shadowCascadeWidth);
  }
  
  List<int> get shadowCascadeHeight => _obj["shadowCascadeHeight"];
  void set shadowCascadeHeight(List<int> shadowCascadeHeight)
  {
    _obj["shadowCascadeHeight"] = new JsObject.jsify(shadowCascadeHeight);
  }
  
  List<num> get shadowCascadeFarZ => _obj["shadowCascadeFarZ"];
  void set shadowCascadeFarZ(List<num> shadowCascadeFarZ)
  {
    _obj["shadowCascadeFarZ"] = new JsObject.jsify(shadowCascadeFarZ);
  }
  
  // Find out what the types are for these
  // TODO: shadowCascadeArray
  // TODO: shadowMap
  // TODO: shadowMapSize
  // TODO: shadowCamera
  // TODO: shadowMatrix
}