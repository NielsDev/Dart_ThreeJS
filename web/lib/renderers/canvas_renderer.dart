part of ThreeJSWrapper;

class CanvasRenderer extends AbstractRenderer
{
  CanvasRenderer([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(context["THREE"]["CanvasRenderer"]);
    }
    else
    {
      JsObject parametersJS = new JsObject.jsify(parameters);
      _obj = new JsObject(context["THREE"]["CanvasRenderer"], [ parametersJS ]);
    }
  }
  
  CanvasRenderer.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get info => _obj["info"];
  CanvasElement get domElement => _obj["domElement"];
  num get devicePixelRatio => _obj["devicePixelRatio"];
  
  bool get autoClear => _obj["autoClear"];
  void set autoClear(bool autoClear)
  {
    _obj["autoClear"] = autoClear;
  }
  
  bool get sortObjects => _obj["sortObjects"];
  void set sortObjects(bool sortObjects)
  {
    _obj["sortObjects"] = sortObjects;
  }
  
  bool get sortElements => _obj["sortElements"];
  void set sortElements(bool sortElements)
  {
    _obj["sortElements"] = sortElements;
  }
  
  
  // == METHODS ==
  
  
  int getMaxAnisotropy() => _obj.callMethod("getMaxAnisotropy");
  
  void render(Scene scene, Camera camera) => _obj.callMethod("render", [ scene._obj, camera._obj ]);
  
  void clear() => _obj.callMethod("clear");
  
  void setClearColor(Color color, num alpha) => _obj.callMethod("setClearColor", [ color._obj, alpha ]);
  
  void setSize(int width, int height, [bool updateStyle]) => _obj.callMethod("setSize", [ width, height, updateStyle ]);
  
  void setClearColorHex(int hex, num alpha) => _obj.callMethod("setClearColorHex", [ hex, alpha ]);
}