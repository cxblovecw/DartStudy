main(List<String> args) {
  var person=new Person();
  // 使用 ..使用方法
  person..sing()..run()..swim();
  // 注意:使用级联 返回的一直都是实例对象 
  print(person..name);   // Instance of 'Person'
  print(person..test()); // Instance of 'Person'
  print(person.test());  // 测试返回值
}


class Person{
  String name='Rob';
  test(){
    return "测试返回值";
  }
  run(){
    print('跑步');
    return '返回值';
  }

  sing(){
    print("唱歌");
  }

  swim(){
    print("跳舞");
  }
}