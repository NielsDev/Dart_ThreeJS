part of ThreeJSWrapper;

class WebGLShader extends ThreeObject
{
  WebGLShader(RenderingContext gl, int type, String string)
  {
    _obj = new JsObject(context["THREE"]["WebGLShader"], [ gl, type, string ]);
  }
  
  WebGLShader.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}