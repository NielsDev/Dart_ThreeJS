part of ThreeJSWrapper;

class CubeCamera extends Object3D
{
  CubeCamera(num near, num far, int cubeResolution)
  {
    _obj = new JsObject(context["THREE"]["CubeCamera"], [ near, far, cubeResolution ]);
  }
  
  CubeCamera.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  // There won't be a problem here because WebGLRenderTargetCube extends WebGLRenderTarget
  WebGLRenderTarget get renderTarget => new WebGLRenderTarget.fromJsObject(_obj["renderTarget"]);
  void set renderTarget(WebGLRenderTarget renderTarget)
  {
    _obj["renderTarget"] = renderTarget._obj;
  }
  
  
  // == METHODS ==
  
  
  void updateCubeMap(AbstractRenderer renderer, Scene scene) => _obj.callMethod("updateCubeMap", [ renderer._obj, scene._obj ]);
}