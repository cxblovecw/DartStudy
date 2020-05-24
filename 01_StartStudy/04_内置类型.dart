main(List<String> args) {
  // Number 
  // 1.int 整数类型
  int n1=10;      // 十进制
  int n2=0xfff;   // 十六进制
  // 2.double 双精度浮点数
  double d1=10.0;
  double d2=1.1e1;

  // Dart2.1开始 在必要时，int会自动转成double

  // 类型转换 反之亦然
  // 字符串转数字
  var one=int.parse('1');

  // 字符串转double
  double dou=double.parse('9.1');

  // int和double转成字符串
  String str1=1.toString();
  String str2=dou.toStringAsFixed(2); // 保留两位小数


  // String 
  // 字符串模板
  var str3='double:${dou}';
  // 使用+拼接 
  var str4="""
    可以换行的字符串:使用三个'或"
  """;

  var rawStr=r"原始字符串";
  print(rawStr);

  // Boolean 布尔类型
  // 注意:Dart中 if()和assert()中只能是布尔类型,不像JS中,if()可以用来判断是否为null这样的
  var flag=null;
  // 报错
  // if(flag){

  // }
  if(flag==null){
    print('值为null');
  }
  
  // List 数组/集合
  var list=[1,'2',true];
  // 推断为 List<dynamic>

  // Set 元素唯一并且无序的集合
  // 使用{}进行定义 和JS有所不同
  var set={'a','b','c'};
  var set2=<String>{};  // 泛型限制的Set

  // Map和Set字面量写法非常相似 {}默认是Map类型
  var map= {"name":"cxb"};
  var map2=<String,dynamic>{};
  map['number']='100';
  print(map);
}