// mixin其实是没有构造函数的类
mixin Music{
  // 可以有静态变量
  static const age=1;
  // 可以有实例变量
  String name;
  // 实例方法
  love(){
    print("情歌");
  }
  // 静态方法
  static sad(){
    print("伤感");
  }
}

class Sport{
  run(){
    print("跑步");
  }
  swim(){
    print("游泳");
  }
}

// with关键字 以混入的方式使用类或mixin
class Person with Music,Sport{

}

main(List<String> args) {
  var person=new Person();

  // 混入mixin之后的类的实例对象会有mixin中的所有实例属性和实例方法
  print(person.name);
  person.love();

  // 混入类和mixin同理 但是相同的 类不能有构造函数
  // 
  person.run();
  person.swim();
}