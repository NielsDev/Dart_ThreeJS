part of ThreeJSWrapper;

class EventDispatcher extends ThreeObject
{
  void addEventListener(String type, Function listener) => _obj.callMethod("addEventListener", [ type, listener ]);
  
  bool hasEventListener(String type, Function listener) => _obj.callMethod("hasEventListener", [ type, listener ]);
  
  void removeEventListener(String type, Function listener) => _obj.callMethod("removeEventListener", [ listener ]);
  
  void dispatchEvent(String type) => _obj.callMethod("dispatchEvent", [ type ]);
}