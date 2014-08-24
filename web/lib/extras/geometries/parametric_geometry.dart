part of ThreeJSWrapper;

class ParametricGeometry extends Geometry
{
  ParametricGeometry(Function func, int slices, int stacks)
  {
    JsObject funcWrapper(num u, num v)
    {
      return func(u, v)._obj;
    }
    
    _obj = new JsObject(context["THREE"]["ParametricGeometry"], [ funcWrapper, slices, stacks ]);
  }
  
  ParametricGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
}