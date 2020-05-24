import 'dart:async';
void  main() {
  // Stream为抽象类 无法直接实例化
  // 1. 创建一个空的Stream对象
  Stream stream1=new Stream.empty();

  // 2. 创建一个在完成前发出单个错误事件的Stream对象
  Stream stream2=new Stream.error(Exception("自定义异常"));
  stream2.listen((event){},onError: (error){
    print(error);
  });
  // 3. 由Future创建一个Stream对象
  Stream stream3=new Stream.fromFuture(Future.sync((){
    return "Future";
  }));
  // 4. 由Future列表创建一个Stream对象
  Stream stream4=new Stream.fromFutures([
    Future.sync((){return "Future1";}),
    Future.sync((){return "Future2";}),
  ]);
  // 5. 由一个可遍历对象创建Stream对象
  Stream stream5=new Stream.fromIterable([1,2,3]);
  // 6. 创建一个间隔重复发出事件4的Stream对象
  Stream stream6=new Stream.periodic(Duration(seconds: 1),(index){
    print(index);
  });
  // 7. 根据一个value创建一个Stream对象
  Stream stream7=Stream.value("Hello Stream");

  // 8. 从一个现有的流复制
  Stream stream8=Stream.eventTransformed(stream7, (sink) =>sink);
  stream8.listen((event) {
    print(event);
  });
}