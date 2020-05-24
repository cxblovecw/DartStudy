enum Color{
  Blue,Yellow,Red,Green
}

// 枚举不能被子类化，混合或实现。
// 枚举不能被显式实例化
main(List<String> args) {
  print(Color.Red.index);        // 2      打印索引 
  print(Color.Red.runtimeType);  // Colors 打印类型 
  print(Color.values);           // values是一个数组 包含枚举的所有值
  // [Colors.Blue, Colors.Yellow, Colors.Red, Colors.Green]

}