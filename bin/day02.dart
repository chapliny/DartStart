main(){
  print("dart day02 start");
  print("++++++++++++++++++++++++++++++ 函数闭合 +++++++++++++++++++++++++++++++++++++++");
  var x = makeSubstract(5);

  print("x 是函数吗？${x is Function}");
  print ("====闭合函数==${x(2)}");



  var callbacks = [];
  for(var i=0;i<3;i++){
    callbacks.add(()=>print("save $i"));
  }

  callbacks.forEach((c)=>c());
  
  var listTest =[1,2,3,4,5];
  listTest.forEach((d)=>print("====${d}"));//forEach  遍历集合里面的内容

  for(var x in listTest){
    print("==另外一种=${x}");
  }

  //可选参数
  funX(1);
  funX(1,b:2,c:5,e:5);//命名可选参数使用大括号{} 主要 用于自定参数 名复制

  funY(1);
  funY(1,6,3,7,90);//在调用的时候参数值会依次按顺序赋值   666

  //********************特殊的操作符号**************************

  //取整
  print("=取整 3/2=${3~/2}");
  print("=取整 3/2=${3/2}");
  //级联
  Person p = new Person("lala","china",18);
  p ..name = "mama"
    ..setCountry("china");
  print(p);


//  assert(p.age!=18);//断言函数。 不满足 直接停止程序

  //
  int i=0;
  while(i<10) {
    i++;
    print("==while==${i}");
  }


  do{
    i--;
    print("==do-while==${i}");
  }while(i>0);

  var tag = "open";
  switch(tag){
    case 'close':
      break;
    case "open":
      print("=====open");
      break;
    default:
      print("==default==");
      break;
  }

  try{
    throw "this is exception";
  }catch(e){
    print("catch ex:$e");
  }finally{
    print("=====执行到 finally++==");
  }



}
//闭合函数返回的必须是一个函数
//里面是一个匿名 函数
Function makeSubstract (num n){
//  num i;
  return (num i) =>n-1;
//return sumM(5, 1);  //error  还不能这么搞，必须返回是一个Function   这样是一个变量了
//  return n-1;
}

int sumM(int a,int b){
  return a + b;
}

//命名可选参数使用大括号{}
funX(a,{b,c:6,d=4,e}){
  print("可选参数-命名可选====:$a $b $c $d $e");
}


funY(a,[b,c=3,d=4,e]){
  print("可选参数-位置可选====:$a $b $c $d $e");
}




class Person{
  var name;
  String country;
  num age;

  Person(this.name,this.country,this.age);
  void setCountry(String country){
    this.country = country;
  }

  String toString()=>"name:$name,country:$country";

}






