main(List<String> args) {
  var flag=true;
  // JS中的三目运算符
  // flag为true 输出?后面的值，为false 输出:后面的值 
  print(flag?'flag为true':'flag为false');

  // V1 ?? V2  V1为null时，将V2赋值给V1
  flag=null;
  print(flag??'当flag为null时,将这个值赋值给flag');

  
}