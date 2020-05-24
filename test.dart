import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';

Completer _completer;
Future _lock;

void  main() {
    print("main start");

    new Future.delayed(new  Duration(seconds:1),(){
        print('task delayed');
    });

    new Future((){
        // 模拟耗时5秒
        print("5s task");
    });

    print("main stop");
}
