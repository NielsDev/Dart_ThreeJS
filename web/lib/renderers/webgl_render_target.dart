part of ThreeJSWrapper;

class WebGLRenderTarget extends EventDispatcher 
{
  WebGLRenderTarget([num width, num height, Map options])
  {
    _obj = new JsObject(context["THREE"]["WebGLRenderTarget"], [ width, height, new JsObject.jsify(options) ]);
  }
  
  WebGLRenderTarget.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}