// 抽象类 
abstract class Person{
  // 实例属性  子类实现接口必须包含
  String name; 
  // 静态属性  子类实现接口不需要包含
  static int age;
  // 抽象方法
  void run();
  // 抽象类中可以写具体方法的实现
  void sing(){
    print("人唱歌");
  }
  // 抽象类中可以写静态方法 这个方法子类实现的时候不需要重写 因为是属于类的
  static swim(){

  }

}

class Animal{
  // 普通类中不能写抽象方法
  // void run();  // 报错
}

// 接口 接口可以是抽象类 也可以是
// 使用 implements实现接口
// 1.必须包含接口中所有非静态的变量
// 2.必须重写接口中所有非静态的方法 不包括构造函数
class Student implements Person{
  String name;
  @override
  void run() {
    print("跑步");
  }
  @override
  void sing() {
    print("学生唱歌");
  }
  // 可以通过重写 noSuchMethod方法 当使用不存在的方法和实例变量时触发
  @override
  noSuchMethod(Invocation invocation) {
    print("没有这个方法或者属性");
  }
}
main(List<String> args) {
  // 注意:这里必须使用 dynamic，否则编译无法通过
  dynamic student=new Student();
  student.nothing();  // 没有这个方法或者属性
}