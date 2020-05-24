import 'dart:async';
void main(List<String> args) {
  // FutureOr<T> 就是Future和T的联合类型
  FutureOr<String> str="str";
  FutureOr<String> future=new Future((){});
  // FutureOr<String> num=1;  // 1不属于String和Future
}