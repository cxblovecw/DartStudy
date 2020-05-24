
void main(List<String> args) {
  // 将run作为参数传递
  startRun(run);
  // 匿名函数：顾名思义 没有名字的函数 并且不需要指定返回值类型
  ((){
    print('匿名函数');
  })();
}

startRun(func){
  // 接收函数作为参数、调用并打印
  print(func()); 
}

run(){
  print("函数可以作为参数进行传递");
  // 没有返回值时，默认返回null
  // return null;   
}