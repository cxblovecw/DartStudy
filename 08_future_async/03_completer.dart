import 'dart:async';

import 'package:dio/dio.dart';


main(List<String> args) {
  // Completer
  // 直接创建Future对象 则会根据代码中的情况 自动进入then或catchError两个参数 
  // 而使用 Completer创建一个Future对象 则不会自动进入then或catchError  而是需要手动触发complete()或catchError()
  Completer completer=new Completer();
  
  completer.future.then((value){
    // 不使用 completer.complete() 则不会进入then
    print("then中的代码");
  }).catchError((err){
    // 不使用 completer.completeError 则不会进入catchError
    print(err);
  });
  if(completer.isCompleted){
    print("complete是否调用了");
  }

  completer.complete();
  // 完成future 进入then()
  // completer.complete();

  // 失败报错 进入catch()
  // completer.completeError("报错啦");
}