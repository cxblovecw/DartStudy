main(List<String> args) {
  var num=0;
  while(num<5){
    print(num++);
    // 当()中的语句为false时 中断当前程序执行流程
    // assert 语句只在开发环境中有效， 在生产环境是无效的
    // 这里是无效的 
    assert(num<3);
  }
}