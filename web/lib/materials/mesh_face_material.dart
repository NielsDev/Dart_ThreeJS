part of ThreeJSWrapper;

class MeshFaceMaterial extends Material
{
  MeshFaceMaterial(List<Material> materials)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = materials.length; i < l; i++)
      list.add(materials[i]._obj);
    
    _obj = new JsObject(context["THREE"]["MeshFaceMaterial"], [ list ]);
  }
  
  MeshFaceMaterial.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  List<Material> get materials
  {
    List<JsObject> list = _obj["materials"];
    ThreeObjectList<Material> listMaterials = [];
    
    for(int i = 0, l = list.length; i < l; i++)
      listMaterials.add(new Material.fromJsObject(list[i]));
    
    return listMaterials;
  }
  void set materials(List<Material> materials)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = materials.length; i < l; i++)
      list.add(materials[i]._obj);
    
    _obj["materials"] = new JsObject.jsify(list);
  }

  
  // == METHODS ==
  
  
  MeshFaceMaterial clone([MeshFaceMaterial material])
  {
   JsObject cloned = _obj.callMethod("clone");
   MeshFaceMaterial clone = new MeshFaceMaterial.fromJsObject(cloned);
   return clone;
  }
}