class Cat{
  int age=10;
  // get中不能直接获取name 不然会进入循环
  String get name=>'Tom';
  // set中不能设置name 不然会进入循环
  set name(name)=>print("set执行");
}
main(List<String> args) {
  var cat=new Cat();
  // cat.name='Jack';
  print(cat.name);
}