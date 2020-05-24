import 'dart:convert';

import 'dart:typed_data';

main(List<String> args) {
  Utf8Codec utf=new Utf8Codec();

  // 将字符串编码为Uint8List
  Uint8List list=utf.encode("王者荣耀");
  // 等价于
  // Uint8List list=new Utf8Encoder().convert("王者荣耀");
  print(list);
  
  // 将Uint8List解码为字符串
  String str=utf.decode(list);
  // 等价于
  // String str=new Utf8Decoder().convert(list);
  print(str);

  // 将流解码
  utf.decodeStream(Stream.value(list)).then((value) => print(value));

  print(utf.name);
}