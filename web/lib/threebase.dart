part of ThreeJSWrapper;

class ThreeBase
{
  // Reference to the JS object
  JsObject _obj;
  
  // Cache so we don't need to re-create objects all the time
  Map<String, ThreeBase> _cache = new Map<String, ThreeBase>();
  
  ThreeBase()
  {
  }
  
  // Every Three object is contructable from the reference to the JS object
  ThreeBase.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  // Construct from cache if it's available in the cache
  static ThreeBase _fromCache(ThreeBase parent, Type type, String name) => _fromCacheJS(parent, type, parent._obj[name], name);
  
  // Construct from cache using a JsObject if it's available in the cache
  static ThreeBase _fromCacheJS(ThreeBase parent, Type type, JsObject obj, String name)
  {
    Map<String, ThreeBase> cache = parent._cache;
    if(cache.containsKey(name))
      return cache[name];
    
    ThreeBase instance;
    if(type == Vector2)           instance = new Vector2.fromJsObject(obj);
    else if(type == Vector3)      instance = new Vector3.fromJsObject(obj);
    else if(type == Vector4)      instance = new Vector4.fromJsObject(obj);
    else if(type == Matrix4)      instance = new Matrix4.fromJsObject(obj);
    else if(type == Color)        instance = new Color.fromJsObject(obj);
    else if(type == Object3D)     instance = new Object3D.fromJsObject(obj);
    else if(type == Box3)         instance = new Box3.fromJsObject(obj);
    else if(type == Sphere)       instance = new Sphere.fromJsObject(obj);
    else if(type == Euler)        instance = new Euler.fromJsObject(obj);
    else if(type == Quaternion)   instance = new Quaternion.fromJsObject(obj);
    else if(type == Ray)          instance = new Ray.fromJsObject(obj);
    else if(type == Texture)      instance = new Texture.fromJsObject(obj);
    else if(type == CubeTexture)  instance = new CubeTexture.fromJsObject(obj);
    else if(type == SkinnedMesh)  instance = new SkinnedMesh.fromJsObject(obj);
    else if(type == Material)     instance = new Material.fromJsObject(obj);
    else if(type == Geometry)     instance = new Geometry.fromJsObject(obj);
    else                          throw new ArgumentError("Can't instantiate object" + type.toString());
    
    cache[name] = instance;
    return instance;
  }
}