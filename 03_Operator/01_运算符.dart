main(List<String> args) {
  // +加 -减 *乘 /除  ~/整除 返回整数部分  %取余数
  print(5~/2);  // 2 其他用法一致

  // num++ 先使用再自增1  ++num 先自增1 再使用
  // num-- 先使用再自减1  --num 先自减1 再使用
  var num=5;
  print(num++);   // 5
  print(num);     // 6


  // 关系运算符 
  // == 相等为true（类型也得相等） != 不等为true 
  print(2=='2');
  // > < >= <= 比较大小
  print(10>5);

  // as 比is更严格 如果不是 抛出异常
  // print({} as Person);  // 报错

  // is 判断变量是否为后者的实例对象 是则true 否则false
  print(new Person('Rob') is Person); // true 

  // is! 和is 相反
  print(new Person('Rob') is! Person); // false 

  // 赋值运算符
  // = 普通赋值
  // ??= 当前者为空时，将后者赋值给前者
  var str;
  str??='Hello World';
  print(str);  // Hello World  本身无值 故赋值
  str??='Hello Dart';
  print(str);  // Hello World  本身有值 不赋值

  // 复合赋值运算符
  // +=   -=  *=  /=  ~/= 
  print(num~/=4);   // num=6 相当于 num=num~/4; 输出 1 其他的同理可得
  bool a=false;
  // |= 布尔类型进行或操作 即有一个true 结果就是true
  // &= 左右两边都为true 结果为true  否则false
  a|=true;
  print(a);

  // 逻辑运算符
  //  || 逻辑或  && 逻辑与  !非 即取反
  print(!true);   // false 
  print(false||true);  // true 有一个为true 结果就是true 
  print(true&&false);  // false 有一个为false 结果就是false
  
  // 其他运算符
  // .? 访问成员 当左侧变量为null时 也不会报错 
  var obj=null;
  var person=new Person('Rob');
  print(obj?.age);
}

class Person{
  String name;
  Person(this.name);
}