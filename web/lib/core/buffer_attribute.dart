part of ThreeJSWrapper;

class BufferAttribute extends ThreeObject
{
  BufferAttribute(List array, int itemSize)
  {
    _obj = new JsObject(context["THREE"]["BufferAttribute"], [ new JsObject.jsify(array), itemSize ]);
  }
  
  BufferAttribute.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get length => _obj["length"];
  
  
  // == METHODS ==
  
  
  BufferAttribute set(List value) => _obj.callMethod("set", [ new JsObject.jsify(value) ]);
  
  BufferAttribute setX(int index, num x) => _obj.callMethod("setX", [ index, x ]);
  
  BufferAttribute setY(int index, num y) => _obj.callMethod("setY", [ index, y ]);
  
  BufferAttribute setZ(int index, num z) => _obj.callMethod("setZ", [ index, z ]);
  
  BufferAttribute setXY(int index, num x, num y) => _obj.callMethod("setXY", [ index, x, y ]);
  
  BufferAttribute setXYZ(int index, num x, num y, num z) => _obj.callMethod("setXYZ", [ index, x, y, z ]);
  
  BufferAttribute setXYZW(int index, num x, num y, num z, num w) => _obj.callMethod("setXYZW", [ index, x, y, z, w ]);
}