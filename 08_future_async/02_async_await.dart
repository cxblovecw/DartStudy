run()async{
  await print("异步操作一");
  await print("异步操作二");
}
main(List<String> args) {
  run();
  Future.sync((){
    print("main中的异步操作");
  });
}

