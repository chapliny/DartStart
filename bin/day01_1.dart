import 'package:dart01/dart01.dart' as dart01;

main(List<String> arguments) {
  print("====arg= ${arguments.length}");
  print("你好dart ：${dart01.calculate()}");
  print('Hello world: ${dart01.calculate()}!');

  //支持的数据类型
  //String
  //Number
  //Boolean
  //List
  //Map

  //dart 本质是动态类型语音，可以用 var 申明，也可以用 类型 来声明
  //赋值时可以用单引号，也可以用双引号
  String str2 = "it is ok?";
  var str = "OK？";

  var str3 = """ 这个是可
          以换行的哦 """;

//多个字符串相邻
  var str4 = "这样可以" " sss" "连接";


  //dart  不支持  str1 + str2  新版本中支持 *******
  //如果要链接 可以 用 $ 加变量值

  var str5 = "我说的连接$str4";
  print("str:$str,\n str2:$str2,\n str3:$str3, \n str4:$str4, \n str5:$str5");

  num num1 = 1; //有int 和 double
  var num2 = 1.233;
  var hex = 0xAC; //支持16进制
  print("num1 :$num1,num2:$num2,hex = $hex");
  //输出 16进制
  print("hex 16进制:0x${hex.toRadixString(16).toUpperCase()}");

  const test = "常量了啊";
  final test2 = 111111; //常量了啊
  // test2 = test2+12;  不能重新赋值
  // const定义的是编译时常量，只能用编译时常量来初始化
  // final定义的常量可以用变量来初始化
  final time1 = new DateTime.now();
  //const time2 = new DateTime.now();//报错

  final List list = [1, 2, 3, "我去这都可以啊", 666]; //啦啦啦  可以定义类型就不行了
  for (int i = 0; i < list.length; i++) {
    var t = list[i];
    print("list[$i]=$t");
  }

  print(sayHello("1111")); //调用函数

  //匿名函数
  var name1 = "dart aaa ";
  var goFunction = (name) => "hello $name!"; //name 动态参数，可以如下这么赋值

  print("匿名函数：${goFunction(name1)}");//我艹 这么用啊

//函数别名的理解
  print ("函数 addInfo 是否是函数：${subtract is Function}");//还判断是一个函数  typedef 只是一个函数别名 ，可能用来判断函数是否满足这个条件
  print ("函数 subtract is add info ==${subtract is addInfo}"); //如果2个函数的 参数 和 返回值类型相同  is  判断就true
//  print ("函数 subtract is subtract2 ==${subtract is subtract2}"); //error 这个就不能判断

  print("函数 subtract:=${subtract(1,2)}");


}

typedef int addInfo(int a,int b);//?????

int subtract(int a,int b) => a+b;

int subtract2(int a,int b)=>a-b;


String sayHello(name){
 return "ssssssss==$name";
}
