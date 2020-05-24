main(List<String> args) {
  for (var i = 0; i < 5; i++) {
    // if(i==3)break;     // break      直接终止循环
    if(i==3)continue;  // continue  跳过后续代码 直接进入下一次循环
    print(i);
  }
}