// 简单使用
class Person<T>{
  T name;
  Person(this.name){

  }
}
// 泛型限定 泛型必须继承Iterable类
class Student<T extends Iterable>{

}
main(List<String> args) {
  // 在创建实例对象的使用使用<String>指定T的类型 这样的话类中的T都是这个类型了
  // 如果不指定的话 系统会根据情况进行推断
  var person=new Person<String>('Rob');
  print(person.name);

  var person2=new Person('Rob');
  print(person2.name);
  // person2.name=111; // 报错 name已经被推断为String类型
  // 此处的<>只能填 继承了 Iterable的类型 如List、Set
  var student=new Student<Set>();
}