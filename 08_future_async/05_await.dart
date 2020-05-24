import 'dart:async';

run()async{
  // 每次进入执行到await或return
  await print("run1");
  await print("run2");
  await print("run3");
}
main(List<String> args)async{
  print('外层同步代码');
  run();
  new Future.sync(() => {
    print("同步Future")
  }).then((value) => {
    // microtask 微任务
    print("同步Future中的then")
  });
  new Future((){
    // event     宏任务
    print("异步Future");
  });
}
