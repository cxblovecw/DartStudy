printString(String str){
  // Dart中使用print()输出 
  // 字符串模板
  print("接收到的字符串${str}");
}

// 入口函数
void main(){
  // 单行注释
  var obj={"key":"value"};
  print(obj);
  String str="Hello World!!";
  printString(str);
}

// 重要概念
// 1.无论是数字，函数和 null 都是对象。所有对象继承自 Object 类。
// 2.Dart是强类型语音，但是会推断类型 如number会推断为int或double，不需要推断，可以使用动态类型dynamic
// 3. Dart支持泛型，如List<String>、List<int>
// 4. Dart支持顶级函数 如 main()，支持函数绑定类和对象上分别是(静态函数和实例函数)，支持函数内嵌套函数。
// 5. 同样的，Dart支持顶级变量，支持变量绑定类和对象上 分别是(静态变量和实例变量)
// 6. 没有public、private、protected，使用_表示私有