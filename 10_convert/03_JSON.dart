import 'dart:convert';

import 'dart:typed_data';

main(List<String> args) {
  JsonCodec jc=new JsonCodec();
  // JS中的对象就是这里的Map
  print({}.runtimeType);
  // 将Map转换成JSON
  Object person=jc.encode({'name':"zs"});
  // 等价于
  // Object person=new JsonEncoder().convert({'name':"zs"});
  print(person);
  // 将JSON转换成Map
  Map<String,dynamic> str=jc.decode(person);
  // 等价于
  // Map<String,dynamic> str=new JsonDecoder().convert(person);
  print(str);

  // 将对象或JSON字符串 转换成一个UTF-8数组(Uint8List)
  Uint8List person2=new JsonUtf8Encoder().convert({'name':'zs'});
  print(person2);
}