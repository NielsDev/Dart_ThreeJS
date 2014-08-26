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
  
  WebGLRenderTarget get renderTarget => ThreeBase._fromCache(this, WebGLRenderTarget, "renderTarget");
  void set renderTarget(WebGLRenderTarget renderTarget)
  {
    _obj["renderTarget"] = renderTarget._obj;
    _cache["renderTarget"] = renderTarget;
  }
  
  
  // == METHODS ==
  
  
  void updateCubeMap(AbstractRenderer renderer, Scene scene) => _obj.callMethod("updateCubeMap", [ renderer._obj, scene._obj ]);
}