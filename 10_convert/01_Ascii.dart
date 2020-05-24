import 'dart:convert';

import 'dart:typed_data';

main(List<String> args) {
  // 创建一个 AsciiCodec 对象 
  AsciiCodec ac=new AsciiCodec();
  // 编码 将ascii字符串转换成UintList类型 无法编码中文 会报错
  Uint8List list=ac.encode("Hello Dart");
  // 等价于
  // Uint8List list=AsciiEncoder().convert("Hello Dart");
  print(list);  // [72, 101, 108, 108, 111, 32, 68, 97, 114, 116]

  // 解码 将UintList转换乘ascii字符串
  String str=ac.decode(list);
  // 等价于
  // String str=AsciiDecoder().convert(list);
  print(str);    // Hello Dart

  // 解码流 即将Stram<List<int>>类型转换成ascii字符串 
  ac.decodeStream(Stream.value(list)).then((value)=>print(value)); // Hello Dart

  // 编解码器的名称
  print(ac.name);  // us-ascii
}