part of ThreeJSWrapper;

class Matrix3 extends ThreeBase
{
  Matrix3([num n11, num n12, num n13, num n21, num n22, num n23, num n31, num n32, num n33])
  {
    if(n11 != null && n12 != null && n13 != null && n21 != null && n22 != null && n23 != null && n31 != null && n32 != null && n33 != null)
    {
      _obj = new JsObject(context["THREE"]["Matrix3"], [ n11, n12, n13, n21, n22, n23, n31, n32, n33 ]);
    }
    else
    {
      _obj = new JsObject(context["THREE"]["Matrix3"], []);
    }
  }
  
  Matrix3.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Float32List get elements => _obj["elements"];
  void set elements(Float32List elements)
  {
    _obj["elements"] = new JsObject.jsify(elements);
  }
  
  
  // == METHODS ==
  
  
  Matrix3 transpose()
  {
    _obj.callMethod("transpose");
    return this;
  }
  
  Matrix3 transposeIntoArray(List<num> array)
  {
    _obj.callMethod("transposeIntoArray", [ new JsObject.jsify(array) ]);
    return this;
  }
  
  num determinant() => _obj.callMethod("determinant");
  
  Matrix3 set(num n11, num n12, num n13, num n21, num n22, num n23, num n31, num n32, num n33)
  {
    _obj.callMethod("set", [ n11, n12, n13, n21, n22, n23, n31, n32, n33 ]);
    return this;
  }
  
  Matrix3 multiplyScalar(num scalar)
  {
    _obj.callMethod("multiplyScalar", [ scalar ]);
    return this;
  }
  
  List<Vector3> applyToVector3Array(List<Vector3> array)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = array.length; i < l; i++)
      list.add(array[i]._obj);
    
    List<JsObject> returnedJS = _obj.callMethod("applyToVector3Array", [ new JsObject.jsify(list) ]);
    List<Vector3> returned = [];
    
    for(int i = 0, l = returnedJS.length; i < l; i++)
      returned[i] = new Vector3.fromJsObject(returnedJS[i]);
    
    return returned;
  }
  
  Matrix3 getNormalMatrix(Matrix4 matrix4)
  {
    JsObject matrix4JS = matrix4._obj;
    _obj.callMethod("getNormalMatrix", [ matrix4JS ]);
    return this;
  }
  
  Matrix3 getInverse(Matrix4 matrix4, bool throwOnInvertible)
  {
    JsObject matrix4JS = matrix4._obj;
    _obj.callMethod("getInverse", [ matrix4JS, throwOnInvertible ]);
    return this;
  }
  
  Matrix3 copy(Matrix3 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("copy", [ matrixJS ]);
    return this;
  }
  
  Matrix3 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Matrix3 clone = new Matrix3.fromJsObject(cloned);
    return clone;
  }
  
  Matrix3 identity()
  {
    _obj.callMethod("identity");
    return this;
  }
}