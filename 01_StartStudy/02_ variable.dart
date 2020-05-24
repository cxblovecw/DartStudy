void main(List<String> args) {
  // 隐式定义:var定义的变量会被推断 这里推断为string
  var name='Rob';
  print(name);
  
  // 显示定义:
  String name2='Rob';
  print(name2);

  // dynamic定义的变量不会被推断 
  dynamic num=100;
  print(num);

  // 注意:所有没有初始化的变量的默认值都是null，数字也一样
  int a;
  print(a);  // null 
}