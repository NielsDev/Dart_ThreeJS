part of ThreeJSWrapper;

class MorphAnimMesh extends Mesh
{
  MorphAnimMesh(Geometry geometry, Material material)
  {
    _obj = new JsObject(context["THREE"]["MorphAnimMesh"], [ geometry._obj, material._obj ]);
  }
  
  MorphAnimMesh.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  bool get directionBackwards => _obj["directionBackwards"];
  void set directionBackwards(bool directionBackwards)
  {
    _obj["directionBackwards"] = directionBackwards;
  }
  
  int get direction => _obj["direction"];
  void set direction(int direction)
  {
    _obj["direction"] = direction;
  }
  
  int get endKeyframe => _obj["endKeyframe"];
  void set endKeyframe(int endKeyframe)
  {
    _obj["endKeyframe"] = endKeyframe;
  }
  
  bool get mirroredLoop => _obj["mirroredLoop"];
  void set mirroredLoop(bool mirroredLoop)
  {
    _obj["mirroredLoop"] = mirroredLoop;
  }
  
  int get startKeyframe => _obj["startKeyframe"];
  void set startKeyframe(int startKeyframe)
  {
    _obj["startKeyframe"] = startKeyframe;
  }
  
  int get lastKeyframe => _obj["lastKeyframe"];
  void set lastKeyframe(int lastKeyframe)
  {
    _obj["lastKeyframe"] = lastKeyframe;
  }
  
  int get length => _obj["length"];
  void set length(int length)
  {
    _obj["length"] = length;
  }
  
  int get time => _obj["time"];
  void set time(int time)
  {
    _obj["time"] = time;
  }
  
  int get duration => _obj["duration"];
  void set duration(int duration)
  {
    _obj["duration"] = duration;
  }
  
  int get currentKeyframe => _obj["currentKeyframe"];
  void set currentKeyframe(int currentKeyframe)
  {
    _obj["currentKeyframe"] = currentKeyframe;
  }
  
  
  // == METHODS ==
  
  
  void setDirectionForward() => _obj.callMethod("setDirectionForward");
  
  void setDirectionBackward() => _obj.callMethod("setDirectionBackward");
  
  void parseAnimations() => _obj.callMethod("parseAnimations");
  
  void setFrameRange(int start, int end) => _obj.callMethod("setFrameRange", [ start, end ]);
  
  void playAnimation(String label, int fps) => _obj.callMethod("playAnimation", [ label, fps ]);
  
  void updateAnimation(int delta) => _obj.callMethod("updateAnimation", [ delta ]);
  
  void setAnimationLabel(String label, int start, int end) => _obj.callMethod("setAnimationLabel", [ label, start, end ]);
}