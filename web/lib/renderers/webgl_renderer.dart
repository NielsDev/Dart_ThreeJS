part of ThreeJSWrapper;

// So we don't conflict in the class with RenderingContext
JsObject jsContext = context;

class WebGLRenderer extends AbstractRenderer
{
  WebGLRenderer([Map parameters])
  {
    if(parameters == null)
    {
      _obj = new JsObject(jsContext["THREE"]["WebGLRenderer"]);
    }
    else
    {
      JsObject parametersJS = new JsObject.jsify(parameters);
      _obj = new JsObject(jsContext["THREE"]["WebGLRenderer"], [ parametersJS ]);
    }
  }
  
  WebGLRenderer.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Map get info => _obj["info"];
  CanvasElement get domElement => _obj["domElement"];
  RenderingContext get context => _obj["context"];
  num get devicePixelRatio => _obj["devicePixelRatio"];
  
  bool get autoClear => _obj["autoClear"];
  void set autoClear(bool autoClear)
  {
    _obj["autoClear"] = autoClear;
  }
  
  bool get autoClearColor => _obj["autoClearColor"];
  void set autoClearColor(bool autoClearColor)
  {
    _obj["autoClearColor"] = autoClearColor;
  }
  
  bool get autoClearDepth => _obj["autoClearDepth"];
  void set autoClearDepth(bool autoClearDepth)
  {
    _obj["autoClearDepth"] = autoClearDepth;
  }
  
  bool get autoClearStencil => _obj["autoClearStencil"];
  void set autoClearStencil(bool autoClearStencil)
  {
    _obj["autoClearStencil"] = autoClearStencil;
  }
  
  bool get sortObjects => _obj["sortObjects"];
  void set sortObjects(bool sortObjects)
  {
    _obj["sortObjects"] = sortObjects;
  }
  
  bool get autoUpdateObjects => _obj["autoUpdateObjects"];
  void set autoUpdateObjects(bool autoUpdateObjects)
  {
    _obj["autoUpdateObjects"] = autoUpdateObjects;
  }
  
  bool get gammaInput => _obj["gammaInput"];
  void set gammaInput(bool gammaInput)
  {
    _obj["gammaInput"] = gammaInput;
  }
  
  bool get gammaOutput => _obj["gammaOutput"];
  void set gammaOutput(bool gammaOutput)
  {
    _obj["gammaOutput"] = gammaOutput;
  }
  
  bool get shadowMapEnabled => _obj["shadowMapEnabled"];
  void set shadowMapEnabled(bool shadowMapEnabled)
  {
    _obj["shadowMapEnabled"] = shadowMapEnabled;
  }
  
  bool get shadowMapAutoUpdate => _obj["shadowMapAutoUpdate"];
  void set shadowMapAutoUpdate(bool shadowMapAutoUpdate)
  {
    _obj["shadowMapAutoUpdate"] = shadowMapAutoUpdate;
  }
  
  int get shadowMapType => _obj["shadowMapType"];
  void set shadowMapType(int shadowMapType)
  {
    _obj["shadowMapType"] = shadowMapType;
  }
  
  int get shadowMapCullFace => _obj["shadowMapCullFace"];
  void set shadowMapCullFace(int shadowMapCullFace)
  {
    _obj["shadowMapCullFace"] = shadowMapCullFace;
  }
  
  bool get shadowMapDebug => _obj["shadowMapDebug"];
  void set shadowMapDebug(bool shadowMapDebug)
  {
    _obj["shadowMapDebug"] = shadowMapDebug;
  }
  
  bool get shadowMapCascade => _obj["shadowMapCascade"];
  void set shadowMapCascade(bool shadowMapCascade)
  {
    _obj["shadowMapCascade"] = shadowMapCascade;
  }
  
  int get maxMorphTargets => _obj["maxMorphTargets"];
  void set maxMorphTargets(int maxMorphTargets)
  {
    _obj["maxMorphTargets"] = maxMorphTargets;
  }
  
  int get maxMorphNormals => _obj["maxMorphNormals"];
  void set maxMorphNormals(int maxMorphNormals)
  {
    _obj["maxMorphNormals"] = maxMorphNormals;
  }
  
  bool get autoScaleCubemaps => _obj["autoScaleCubemaps"];
  void set autoScaleCubemaps(bool autoScaleCubemaps)
  {
    _obj["autoScaleCubemaps"] = autoScaleCubemaps;
  }
  
  // TODO: renderPluginsPre
  // TODO: renderPluginsPost
  // TODO: shadowMapPlugin
  
  
  // == METHODS ==
  
  
  RenderingContext getContext() => _obj.callMethod("getContext");
  
  bool supportsVertexTextures() => _obj.callMethod("supportsVertexTextures");
  
  void setSize(int width, int height) => _obj.callMethod("setSize", [ width, height ]);
  
  void setViewport(int x, int y, int width, int height) => _obj.callMethod("setViewport", [ x, y, width, height ]);
  
  void setScissor(int x, int y, int width, int height) => _obj.callMethod("setScissor", [ x, y, width, height ]);
  
  void setClearColor(Color color, num alpha) => _obj.callMethod("setClearColor", [ color._obj, alpha ]);
  
  Color getClearColor() => new Color.fromJsObject(_obj.callMethod("getClearColor"));
  
  num getClearAlpha() => _obj.callMethod("getClearAlpha");
  
  void clear(bool color, bool depth, bool stencil) => _obj.callMethod("clear", [ color, depth, stencil ]);
  
  // TODO: addPostPlugin
  // TODO: addPrePlugin
  
  void updateShadowMap(Scene scene, Camera camera) => _obj.callMethod("updateShadowMap", [ scene._obj, camera._obj ]);
  
  // TODO: renderBufferImmediate
  // TODO: renderBufferDirect
  // TODO: renderBuffer
  
  void render(Scene scene, Camera camera, [WebGLRenderTarget renderTarget, bool forceClear])
  {
    if(renderTarget == null)
      _obj.callMethod("render", [ scene._obj, camera._obj ]);
    else if(renderTarget != null && forceClear == null)
      _obj.callMethod("render", [ scene._obj, camera._obj, renderTarget._obj ]);
    else
      _obj.callMethod("render", [ scene._obj, camera._obj, renderTarget._obj, forceClear ]);
  }
  
  // TODO: renderImmediateObject
  
  void initWebGLObjects(Scene scene) => _obj.callMethod("initWebGLObjects", [ scene._obj ]);
  
  // TODO: initMaterial
  
  void setFaceCulling(String cullFace, String frontFace) => _obj.callMethod("setFaceCulling", [ cullFace, frontFace ]);
  
  void setDepthTest(bool depthTest) => _obj.callMethod("setDepthTest", [ depthTest ]);
  
  void setDepthWrite(bool depthWrite) => _obj.callMethod("setDepthWrite", [ depthWrite ]);
  
  void setBlending(int blending, int blendEquation, int blendSrc, int blendDst) => _obj.callMethod("setBlending", [ blending, blendEquation, blendSrc, blendDst ]);
  
  // TODO: setTexture
  
  void setRenderTarget(WebGLRenderTarget renderTarget) => _obj.callMethod("setRenderTarget", [ renderTarget._obj ]);
  
  bool supportsCompressedTextureS3TC() => _obj.callMethod("supportsCompressedTextureS3TC");
  
  int getMaxAnisotropy() => _obj.callMethod("getMaxAnisotropy");
  
  String getPrecision() => _obj.callMethod("getPrecision");
  
  void setMaterialFaces(Material material) => _obj.callMethod("setMaterialFaces", [ material._obj ]);
  
  bool supportsStandardDerivatives() => _obj.callMethod("supportsStandardDerivatives");
  
  bool supportsFloatTextures() => _obj.callMethod("supportsFloatTextures");
  
  void clearTarget(WebGLRenderTarget renderTarget, bool color, bool depth, bool stencil) => _obj.callMethod("clearTarget", [ renderTarget._obj, color, depth, stencil ]);
}