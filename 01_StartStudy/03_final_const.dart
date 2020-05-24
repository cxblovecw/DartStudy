import 'dart:math';

main(List<String> args) {
  // const 编译时常量:即编译时就必须是常量
  // 1. 只能赋值常量，不能赋值包含变量的表达式
  var a=10;
  // const num=a>5?1:2;  // 报错 
  // 2. 可以用来声明常量值
  var constList= const [];  // 声明一个不可变的List
  // constList.add("1");    //  编译报错
  constList=[1,2,3];  // constList是var修饰 可以赋值

  // final 运行时常量:即运行之后是常量 右边可包含变量表达式
  // 1.final右侧可以是包含变量的表达式
  final num2=a>5?1:2;    // 通过

}
class Person{
  // 如果是const 则需要加上 static
  static const name='';
   // 构造函数如果用const修饰 那么所有的属性都必须是final,并且构造函数不得有函数体
  const Person();
}