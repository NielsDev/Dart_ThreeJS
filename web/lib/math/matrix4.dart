part of ThreeJSWrapper;

class Matrix4 extends ThreeBase
{
  Matrix4([num n11, num n12, num n13, num n14, num n21, num n22, num n23, num n24, num n31, num n32, num n33, num n34, num n41, num n42, num n43, num n44])
  {
    if(n11 != null && n12 != null && n13 != null && n14 != null && n21 != null && n22 != null && n23 != null && n24 != null && n31 != null && n32 != null && n33 != null && n34 != null)
    {
      _obj = new JsObject(context["THREE"]["Matrix4"], [ n11, n12, n13, n14, n21, n22, n23, n24, n31, n32, n33, n34, n41, n42, n43, n44 ]);
    }
    else
    {
      _obj = new JsObject(context["THREE"]["Matrix4"], []);
    }
  }
  
  Matrix4.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Float32List get elements => _obj["elements"];
  void set elements(Float32List elements)
  {
    _obj["elements"] = elements;
  }
  
  
  // == METHODS ==
  
  
  Matrix4 set(num n11, num n12, num n13, num n14, num n21, num n22, num n23, num n24, num n31, num n32, num n33, num n34, num n41, num n42, num n43, num n44)
  {
    _obj.callMethod("set", [ n11, n12, n13, n14, n21, n22, n23, n24, n31, n32, n33, n34, n41, n42, n43, n44 ]);
    return this;
  }
  
  Matrix4 identity()
  {
    _obj.callMethod("identity");
    return this;
  }
  
  Matrix4 copy(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("copy", [ matrixJS ]);
    return this;
  }
  
  Matrix4 copyPosition(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("copyPosition", [ matrixJS ]);
    return this;
  }
  
  Matrix4 extractRotation(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("extractRotation", [ matrixJS ]);
    return this;
  }
  
  Matrix4 lookAt(Vector3 eye, Vector3 center, Vector3 up)
  {
    JsObject eyeJS = eye._obj;
    JsObject centerJS = center._obj;
    JsObject upJS = up._obj;
    _obj.callMethod("lookAt", [ eyeJS, centerJS, upJS ]);
    return this;
  }
  
  Matrix4 multiply(Matrix4 matrix)
  {
    JsObject matrixJS = matrix._obj;
    _obj.callMethod("multiply", [ matrixJS ]);
    return this;
  }
  
  Matrix4 multiplyMatrices(Matrix4 a, Matrix4 b)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("multiplyMatrices", [ aJS, bJS ]);
    return this;
  }
  
  Matrix4 multiplyToArray(Matrix4 a, Matrix4 b, List<num> r)
  {
    JsObject aJS = a._obj;
    JsObject bJS = b._obj;
    _obj.callMethod("multiplyToArray", [ aJS, bJS, r ]);
    return this;
  }
  
  Matrix4 multiplyScalar(num s)
  {
    _obj.callMethod("multiplyScalar", [ s ]);
    return this;
  }
  
  num determinant() => _obj.callMethod("determinant");
  
  Matrix4 transpose()
  {
    _obj.callMethod("transpose");
    return this;
  }
  
  List<num> flattenToArrayOffset(List<num> flat, num offset) => _obj.callMethod("flattenToArrayOffset", [ new JsObject.jsify(flat), offset ]);
  
  Matrix4 setPosition(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("setPosition", [ vJS ]);
    return this;
  }
  
  Matrix4 makeRotationFromEuler(Vector3 v, String order)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("makeRotationFromEuler", [ vJS, order ]);
    return this;
  }
  
  Matrix4 makeRotationFromQuaternion(Quaternion q)
  {
    JsObject qJS = q._obj;
    _obj.callMethod("makeRotationFromQuaternion", [ qJS ]);
    return this;
  }
  
  Matrix4 scale(Vector3 v)
  {
    JsObject vJS = v._obj;
    _obj.callMethod("scale", [ vJS ]);
    return this;
  }
  
  Matrix4 compose(Vector3 translation, Quaternion quaternion, Vector3 scale)
  {
    JsObject translationJS = translation._obj;
    JsObject quaternionJS = quaternion._obj;
    JsObject scaleJS = scale._obj;
    _obj.callMethod("compose", [ translationJS, quaternionJS, scaleJS ]);
    return this;
  }
  
  Matrix4 decompose(Vector3 translation, Quaternion quaternion, Vector3 scale)
  {
    JsObject translationJS = translation._obj;
    JsObject quaternionJS = quaternion._obj;
    JsObject scaleJS = scale._obj;
    _obj.callMethod("decompose", [ translationJS, quaternionJS, scaleJS ]);
    return this;
  }
  
  Matrix4 makeTranslation(num x, num y, num z)
  {
    _obj.callMethod("makeTranslation", [ x, y, z ]);
    return this;
  }
  
  Matrix4 makeRotationX(num theta)
  {
    _obj.callMethod("makeRotationX", [ theta ]);
    return this;
  }
  
  Matrix4 makeRotationY(num theta)
  {
    _obj.callMethod("makeRotationY", [ theta ]);
    return this;
  }
  
  Matrix4 makeRotationZ(num theta)
  {
    _obj.callMethod("makeRotationZ", [ theta ]);
    return this;
  }
  
  Matrix4 makeRotationAxis(Vector3 axis, num theta)
  {
    JsObject axisJS = axis._obj;
    _obj.callMethod("makeRotationAxis", [ axisJS, theta ]);
    return this;
  }
  
  Matrix4 makeScale(num x, num y, num z)
  {
    _obj.callMethod("makeScale", [ x, y, z ]);
    return this;
  }
  
  Matrix4 makeFrustum(num left, num right, num bottom, num top, num near, num far)
  {
    _obj.callMethod("makeFrustum", [ left, right, bottom, top, near, far ]);
    return this;
  }
  
  Matrix4 makePerspective(num fov, num aspect, num near, num far)
  {
    _obj.callMethod("makePerspective", [ fov, aspect, near, far ]);
    return this;
  }
  
  Matrix4 makeOrthographic(num left, num right, num bottom, num top, num near, num far)
  {
    _obj.callMethod("makeOrthographic", [ left, right, bottom, top, near, far ]);
    return this;
  }
  
  Matrix4 clone()
  {
    JsObject cloned = _obj.callMethod("clone");
    Matrix4 clone = new Matrix4.fromJsObject(cloned);
    return clone;
  }
  
  List<num> applyToVector3Array(List<Vector3> a)
  {
    List<JsObject> list = [];
    
    for(int i = 0, l = a.length; i < l; i++)
      list.add(a[i]._obj);
    
    return _obj.callMethod("applyToVector3Array", [ new JsObject.jsify(list) ]);
  }
  
  num getMaxScaleOnAxis() => _obj.callMethod("getMaxScaleOnAxis");
}