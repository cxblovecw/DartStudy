main(List<String> args) {
  var count=0;
  while(count<5){
    print(count++); // 0 1 2 3 4
  }
  // do-while循环中 先执行do{}中的代码 再判断条件 因此do{}中的代码至少都会执行一次
  do {
    print(count++); // 5
  } while (count<5);
}