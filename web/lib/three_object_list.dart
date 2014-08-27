part of ThreeJSWrapper;

class ThreeObjectList<T extends ThreeObject> extends ListBase<T>
{
  // Reference to the JS object
  List<JsObject> _innerListJS;
  List<T> _innerList = new List<T>();
  
  ThreeObjectList(this._innerListJS);
  
  int get length => _innerList.length;
  void set length(int length)
  {
    _innerList.length = length;
  }
  
  void operator[]=(int index, T value)
  {
    _innerListJS[index] = value._obj;
    _innerList[index] = value;
  }
  
  ThreeObject operator[](int index)
  {
    return _innerList[index];
  }
  
  void addNoJS(T value)
  {
    _innerList.add(value);
  }
  
  void add(T value)
  {
    _innerListJS.add(value._obj);
    _innerList.add(value);
  }
  
  void addAll(Iterable<T> all)
  {
    all.forEach((T value)
    {
      _innerListJS.add(value._obj);
      _innerList.add(value);
    });
  }
  
  bool remove(T value)
  {
    _innerListJS.remove(value._obj);
    return _innerList.remove(value);
  }
  
  T removeAt(int index)
  {
    ThreeObject obj = _innerList[index];
    _innerListJS.removeAt(index);
    _innerList.removeAt(index);
    return obj;
  }
}