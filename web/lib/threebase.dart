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
    
    ClassMirror classMirror = reflectClass(type);
    Symbol constructor = const Symbol("fromJsObject");
    InstanceMirror instance = classMirror.newInstance(constructor, [ obj ]);
    
    ThreeBase instanceThree = instance.reflectee;
    cache[name] = instanceThree;
    return instanceThree;
  }
}