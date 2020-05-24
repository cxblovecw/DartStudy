// 可选参数 
// @required 需要引入 package:meta/meta.dart  
// 命名可选参数 {}  使用的 key:Type的形式
// 设置命名可选参数的默认值时 不需要添加类型 因为系统会推断
void run({name:String,age=18}){

}
// 位置可选参数 [] 根据位置进行赋值 使用Type key的形式
// 位置可选参数的默认值设置
void sing([String name='Rob']){

}

void main(List<String> args) {
  // 需要指定名称进行赋值
  run(name: 'Tim');
  // 根据位置进行赋值 
  sing('Rob');
}