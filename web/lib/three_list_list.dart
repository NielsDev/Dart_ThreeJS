part of ThreeJSWrapper;

class ThreeListList<T extends ListBase> extends ListBase<T>
{
  // Reference to the JS object
  List _innerListJS;
  List _innerList = [];
  
  ThreeListList(this._innerListJS);
  
  int get length => _innerList.length;
  void set length(int length)
  {
    _innerList.length = length;
  }
  
  void operator[]=(int index, Object value)
  {
    if(value is ThreeListList)
    {
      ThreeListList castedList = value;
      _innerListJS[index] = castedList._innerListJS;
    }
    else if(value is ThreeObjectList)
    {
      ThreeObjectList casted = value;
      _innerListJS[index] = casted._innerListJS;
    }
    else if(value is List)
    {
      List casted = value;
      List<JsObject> listJS = new List<JsObject>();
      
      for(int i = 0, l = casted.length; i < l; i++)
        listJS.add(casted[i]._obj);
      
      _innerListJS[index] = new JsObject.jsify(listJS);
    }
    else
    {
      _innerListJS[index] = value;
    }
    
    _innerList[index] = value;
  }
  
  T operator[](int index)
  {
    return _innerList[index];
  }
  
  void addNoJS(Object value)
  {
    _innerList.add(value);
  }
  
  void add(Object value)
  {
    if(value is ThreeListList)
    {
      ThreeListList casted = value;
      _innerListJS.add(casted._innerListJS);
    }
    else if(value is ThreeObjectList)
    {
      ThreeObjectList casted = value;
      _innerListJS.add(casted._innerListJS);
    }
    else if(value is List)
    {
      List casted = value;
      List<JsObject> listJS = new List<JsObject>();
      
      for(int i = 0, l = casted.length; i < l; i++)
        listJS.add(casted[i]._obj);
      
      _innerListJS.add(new JsObject.jsify(listJS));
    }
    else
    {
      _innerListJS.add(value);
    }
    
    _innerList.add(value);
  }
  
  void addAll(Iterable<T> all)
  {
    all.forEach((T value) => add(value));
  }
  
  bool remove(T value)
  {
    int index = _innerList.indexOf(value);
    _innerListJS.removeAt(index);
    return _innerList.removeAt(index);
  }
  
  T removeAt(int index)
  {
    T obj = _innerList[index];
    _innerListJS.removeAt(index);
    _innerList.removeAt(index);
    return obj;
  }
}