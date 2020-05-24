
import 'dart:async';

main(List<String> args){
  // 希望理解同步异步执行的顺序 才能感受到sync()和别的函数的不同
  // 可以分别注释 观察和代码最后的一句同步打印函数print("后续的普通同步函数");的执行顺序的区别 就比较好理解了
  // 普通创建
  // Future future=new Future((){
  //   // 注意：除了Future.sync()方法外 其他的方法创建的future这个部分的代码都是异步的(宏任务event)，即会先执行后续的同步代码，再执行这里的异步代码 
  //   print("异步函数");
  // });
  // 其中的函数为同步函数 
  Future future=new Future.sync((){
    print("同步函数");
    return "666";
  });

  // 延迟加入队列 即后续的代码会先加入队列 输出的结果顺序也会发生改变
  // Future future=new Future.delayed(Duration(seconds: 3));

  // 创建异常的future 直接进入catchError()
  // Future future=new Future.error("报错啦");

  // 创建Future并返回一个值 这个值会被then接收
  // Future future=Future.value("666");
  // 等价于
  // Future future=new  Future((){return "666";});
  
  


  // 设置超时时间
  future.timeout(Duration(seconds: 2))
  // 代码没有异常时执行
  .then((value) => {
    print("then"),
    print(value)
  })
  // 发生异常时执行
  .catchError((error){
    print(error);
  })
  // then()结束后执行
  .whenComplete(() =>{
    print("complete")
  });
  // 创建一个包含次future结果的流 
  // print(future.then((value) => "xxx").asStream());
  print("后续的普通同步函数");

  // 静态方法
  // 1. any的执行结果由[]中先完成的future决定
  Future.any([
    // 可以分别打开注释测试 
    // 先报错 2秒后另一个完成 any的结果为报错 
    Future((){throw Error();}),Future((){Timer(Duration(seconds: 2),(){});}),
    // 先完成 2秒后报错    any的结果为 完成   
    // Future((){}),Future((){Timer(Duration(seconds: 2),(){throw Error();});})
  ]).then((value) =>{
    print("any:完成")
  }).catchError((err){
    print("any:发生错误");
  });

  // 2. wait 等待 只要有一个报错 那么结果就是报错 
  Future.wait([
    // Future((){throw Error();}),
    // Future((){}),
    // 注意：future中的异步代码不影响wait的结果 
    Future(()async{
      // Future中的嵌套一个future，这是子future的then中的代码就是异步的 即不影响wait结果
      // 即只看同步的代码的结果
      // Future((){}).then((value) => {throw Error()});
    }),
    Future((){})
  ]).then((value) =>{
    print("wait:完成")
  }).catchError((err){
    print("wait:发生错误");
  });
  // doWhile 只有当(){}中的代码返回false的时候 才会停止
  var i=0;
  Future.doWhile((){
    print(i);
    if(i<3){
      i++;
      return true;
    }else{
      print("doWhile执行完毕");
      return false;
    }
  });
  List<Future> list=[
    Future((){return "Future1";}),Future((){return "Future2";})
  ];
  // 遍历Future数组 List<Future>
  Future.forEach(list, (Future element) =>{
    element.then((value){
      print(value);
    })
  });
}
