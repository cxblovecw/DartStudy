import 'dart:convert';

import 'dart:typed_data';

main(List<String> args)async {
  AsciiCodec ac=new AsciiCodec();
  Uint8List list=await ac.encode("Hello Dart");
  print(list);  //  [72, 101, 108, 108, 111, 32, 68, 97, 114, 116]

  // Base64Codec允许base64将字节编码为ASCII字符串，并将有效编码解码回字节,始终是4的倍数。
  Base64Codec bc=new Base64Codec();
  // 编码
  String str=bc.encode(list);
  // 等价于
  // String str=new Base64Encoder().convert(list);
  print(str);  //   SGVsbG8gRGFydA==

  // 解码
  Uint8List list2=bc.decode(str);
  // 等价于
  // Uint8List list2=new Base64Decoder().convert(str);
  print(list2); //  [72, 101, 108, 108, 111, 32, 68, 97, 114, 116]

  // 验证并标准化source的base64编码数据 是base64则照常输出 不是则进行填充或报错
  // 看是否是4的倍数 如果多一个字符 则报错 多两个及以上 则填充
  print(bc.normalize(str));
}