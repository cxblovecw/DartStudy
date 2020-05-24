// 泛型在List、Set、Map中的使用

main(List<String> args) {
  // 注意：当添加不满足添加的值时，写的时候不会报错，运行会报错
  // 这是一个int类型的数组
  List l=new List<int>();
  // l.add('');  // 报错 不能将String类型赋值给int
  l.add(1);      // 编译通过

  Set s=new Set<String>();
  // s.add(1);   // 报错
  s.add('str');  // 编译通过

  Map m=new Map();
  // addEntries 添加[MapEntry(),MapEntry()]
  m.addEntries([MapEntry("str", 10)]);
  // 设置值 如果key已经存在 则没有 不存在 则创建
  m['str']=100;
  print(m); 
  // 根据键来进行删除
  m.remove('str');  
  // 删除满足条件的 MapEntry 返回true 则删除
  m.removeWhere((key,value){
    print(key);
    print(value);
    return true;
  });
  print(m);
}