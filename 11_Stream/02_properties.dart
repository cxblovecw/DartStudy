import 'dart:async';
main(List<String> args) {
  // 单订阅流 只能监听一次 否则报错
  // asBroadcastStream()返回一个和当前流相同事件的订阅流 订阅流可以多次监听 此处使用订阅流测试
  Stream stream=Stream.fromIterable([1,1,3,4]).asBroadcastStream();
  // 监听并返回流的第一个/最后一个数据事件 收到后停止监听这个流
  // 如果在第一个/最后一个数据事件之前发生错误事件，则返回的future将以该错误完成.
  // 如果此流为空（在第一个数据事件/最后一个 之前发生完成事件），则返回的future将完成并显示错误.
  // stream.first.then((value) => print(value));
  //  stream.last.then((value) => print(value));

  print(stream.isBroadcast);  //是否是广播流

  // 监听流 判断是否为空 返回Future对象 返回值为判断的结果
  stream.isEmpty.then((value) => print(value));     
  
  // 监听流 返回Future对象 返回值为流的长度
  stream.length.then((value) => print(value));

  // 监听流 判断是否只有一个元素 返回Future对象 返回值为
  stream.single.then((value) => print(value));
  
}