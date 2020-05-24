// 泛型函数
main(List<String> args) {

  run<String>("name");
}
// 可以限定返回值 参数列表 以及函数体中的变量
T run<T>(T name){
  T sport;
  return name;
}