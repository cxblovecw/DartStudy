class Person{
  // 实例属性不赋值默认是 null
  // 当属性名用final修饰时 在构造函数中必须初始化
  final String name;
  // const修饰时 前面需要有 static并且必须马上初始化
  static const source=100;

  int age;
  static var type="Person";
  // 默认情况下 系统会自动提供一个没有参数的构造函数
  // 构造函数 当构造函数中除了赋值之外没别的操作时 可以这样简写
  Person(this.name,this.age);
  // 初始化列表 不传值 直接使用初始值
  Person.list():name='',age=18{
    this.age=age;
  }
  Person.redirect():this('Rob',18);
  
  // 命名构造函数        初始化列表验证
  Person.test(this.name):assert(name!=''){
    // this指向当前对象
  }
  // 实例方法
  run(){
    print("跑步");
  }
  // 静态方法
  static sing(){
    print("唱歌");
  }
}

class Student extends Person{
  String name;
  int age;
  // 默认情况下 子类会调用父类的构造函数
  // 当父类构造函数有参数时需要参数 如果父类构造函数没有参数 则直接调用默认无参的构造函数
  Student(this.name,this.age): super('', 0);
}

main(List<String> args) {
  // Dart2之后 new是可选的 
  Person person=new Person.test('Rob');
  print(person.name);  // Rob 
  print(person.age);   // null 没有赋值 默认为null 
  // 实例方法 通过实例对象调用
  Person person2=Person.list();
  print(person2.age);   
  person.run();
  // 静态方法 通过类名调用
  Person.sing();
  // 静态属性 通过类名调用
  print(Person.source);
  var student=new Student("Tim", 18);
  print(student.name);
}

