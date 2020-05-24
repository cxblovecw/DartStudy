import 'dart:async';

main(List<String> args)async{
  // asBroadcastStream()返回一个和当前流相同事件的订阅流 订阅流可以多次监听 此处使用订阅流测试
  Stream stream=new Stream.fromIterable([1,2,3,4,5]).asBroadcastStream();
  // 监听流 只有流中的元素有一个满足条件 则返回true并且后续的元素可以保留 否则false 全部清空了
  // await stream.any((element){
  //   return element==1;
  // }).then((value) => print(value));  // true
  // await stream.listen((event) {print(event);});

  // 监听流 是否接收流中的所有元素 返回true则所有元素不见了 如果false则可能前两个元素不见
  // await stream.every((element){return element>0;}).then((value) =>print(value)); //false 
  // stream.listen((event) {print(event);});
  
  // 监听流 创建一个新的流 返回所有满足添加的元素给新的流
  Stream stream2= stream.where((event) => event>0);
  // await stream2.listen((event) {print(event);});

  // 创建一个具有与此流相同事件的新流,每当两个事件传递的事件超过Timeout则调用onTimeout函数
  Stream stream3=stream.timeout(Duration(seconds: 1));
  
  // 循环元素并操作
  stream.forEach((element){
    
  });
  // 找到第一个满足添加的元素
  // await stream.firstWhere((element) => element>2).then((value) => print(value));

  // 转换成List
  stream.toList().then((value) => print(value));
  // 转换成Set
  stream.toSet().then((value) => print(value)); 


  // map和asyncMap将一个流映射到一个新的流上 区别就是同步和异步的
  // Stream newStream=stream.asyncMap((event) =>event);

  // 转换stream为Stream<R>类型 这个R自己指定
  // stream=stream.cast<String>();
  // stream.listen((event) {print(event);});  //报错 转换之后 会检查每一项是否是<R>的实例 这里的R为String   
  // print(stream);  //  Instance of 'CastStream<int, String>' int默认或者创建的时候设置的 String是cast出来的

  // 是否包含某个元素 以==进行比较
  // newStream.contains(1).then((value) => print(value));  // false

  // newStream.length.then((value) => print(value));

  // 获取第一个元素 基本等价于 first
  // stream.elementAt(0).then((value) => print(value));

  // 丢掉流上的所有元素 但在完成或发生错误时发出信号
  // await stream.drain().then((value) => print("丢弃所有元素"));

  // stream.listen((event) {print(event);});

}