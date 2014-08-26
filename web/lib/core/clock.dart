part of ThreeJSWrapper;

class Clock extends ThreeBase
{
  Clock([bool autoStart])
  {
    if(autoStart == null)
      _obj = new JsObject(context["THREE"]["Clock"]);
    else
      _obj = new JsObject(context["THREE"]["Clock"], [ autoStart ]);
  }
  
  Clock.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  bool get autoStart => _obj["autoStart"];
  void set autoStart(bool autoStart)
  {
    _obj["autoStart"] = autoStart;
  }
  
  num get startTime => _obj["startTime"];
  void set startTime(num startTime)
  {
    _obj["startTime"] = startTime;
  }
  
  num get oldTime => _obj["oldTime"];
  void set oldTime(num oldTime)
  {
    _obj["oldTime"] = oldTime;
  }
  
  num get elapsedTime => _obj["elapsedTime"];
  void set elapsedTime(num elapsedTime)
  {
    _obj["elapsedTime"] = elapsedTime;
  }
  
  bool get running => _obj["running"];
  void set running(bool running)
  {
    _obj["running"] = running;
  }
  
  
  // == METHODS ==
  
  
  void start() => _obj.callMethod("start");
  
  void stop() => _obj.callMethod("stop");
  
  num getElapsedTime() => _obj.callMethod("getElapsedTime");
  
  num getDelta() => _obj.callMethod("getDelta");
}