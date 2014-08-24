part of ThreeJSWrapper;

class WebGLRenderTargetCube extends WebGLRenderTarget
{
  WebGLRenderTargetCube(num width, num height, Map options)
  {
    _obj = new JsObject(context["THREE"]["WebGLRenderTargetCube"], [ width, height, new JsObject.jsify(options) ]);
  }
  
  WebGLRenderTargetCube.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  num get activeCubeFace => _obj["activeCubeFace"];
  void set activeCubeFace(int activeCubeFace)
  {
    _obj["activeCubeFace"] = activeCubeFace;
  }
}