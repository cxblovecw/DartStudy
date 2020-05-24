import "package:meta/meta.dart";
class Todo {
  final String who;
  final String what;
  const Todo(this.who, this.what);
  // 使用 @deprecated修饰 调用时会有删除线 表示不推荐使用
  @deprecated
  run(){
    print("跑步"); 
  }
}

class Person{
  String name;
  int age;
  // 使用 @required修饰可选参数 则表示这个参数是必须要传入的
  Person(String test,{this.name,@required this.age});
}
main(List<String> args) {
  @Todo('need a name','something to do')
  var todo=new Todo("I", "study");
  print(todo.who);
  // 因为方法被 @deprecated修饰 所以调用时会有删除线 
  todo.run();

  var person=new Person('',age: 20);
}