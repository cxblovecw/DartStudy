class Animal{
  final String type;
  final String name;
  // 静态构造函数 这时所有的属性都需要用final修饰
  const Animal(this.type,this.name);
}

main(List<String> args) {
  // 所有属性都是final修饰无法改变 再传递相同的参数 这时使用const进行修饰 
  // 这两个实例对象就是同一个实例对象了
  var animal1=const Animal('Cat', "Tom");

  var animal2=const Animal('Cat', "Tom");

  print(animal1==animal2);
}