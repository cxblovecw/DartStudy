import 'dart:convert';

import 'dart:typed_data';

main(List<String> args) {
  // Latin1编码是单字节编码（无法编码中文），向下兼容ASCII
  Latin1Codec lc=new Latin1Codec();
  Uint8List list=lc.encode("Hello Dart");
  // Uint8List list2=lc.encode("你好 Dart"); //报错
  print(list);

  String str=lc.decode(list);
  print(str);
}