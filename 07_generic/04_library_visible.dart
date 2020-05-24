// 库和可见性
// 1. 每一个应用程序都是一个库
// 2. _开头的仅在库中可见 其他文件无法访问 类似私有
// 3. 使用import关键字导入库
// 4. 直接导入 默认是导入所有 并且可以使用as给库其别名 常用于引入多个库时 其中的变量名称重复的问题 
// 5. as前加上 deferred 延迟加载 即使用到了再加载模块
import '05_myLibrary1.dart' deferred as myLibrary;
// 6. 根据需求进行导入 使用show导入需要的 使用hide隐藏不需要的
import '06_myLibrary2.dart' show data2 hide secret2;

main(List<String> args) {
  // 
  print(myLibrary.data1);
  // print(myLibrary.secret);  // 无法访问其他库中 _开头的变量

  // 没有起别名时  直接变量名使用
  print(data2);

  var person=myLibrary.Person("");
}
