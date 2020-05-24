main(List<String> args) {
  // 根据day的值打印不同的情况
  // 注意点:
  // 1. 缺少break会报错
  var day=1;  // 1
  switch(day){
    // 空的时候 会和紧接着的一个合并 即day=11 也会输出周一
    case 11:
    case 1:
      print('周一');
      continue three;  // 跳转至 three
    case 2:
      print('周二');
      break;
    // 给case打上标记 用于continue跳转
    three:
    case 3:
      print('周三');
      break;
    case 4:
      print('周四'); 
      break;
    case 5:
      print('周五');
      break;
    case 6:
      print('周六');
      break;
    case 7:
      print('周日');
      break;
  }
}