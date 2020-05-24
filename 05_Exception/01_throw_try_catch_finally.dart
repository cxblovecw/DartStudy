main(List<String> args) {
  try {
    // 代码本身就有异常
    // print(1 as String);
    // 手动抛出异常使用 throw
    // throw FormatException("手动抛出FormatException");
    // 也可以抛出任意的对象
    throw "随便抛出的对象";
    // on指定异常类型 catch捕获异常 可以一起使用 也可以分开使用
  }on FormatException catch(e){
    // 指定具体的异常 只捕获这种异常
    print(e);
  } catch (e) {
    // 不指定异常类型 捕获所有异常
    print(e);
  }finally{
    print("Finally中的代码必会被执行");
  }
}