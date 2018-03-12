import 'dart:math'; //dart:前缀表示Dart的标准库，如dart:io、dart:html
import 'day01_1.dart'as day01;
import 'day02_2.dart' show shape,Logger hide Rectangle;//show 显示某个成员，hide 隐藏某个成员




main(){
  //List
  var listTest = new List();  //可以添加 固定长度  new List(2);
  //简单的 赋值
  var fruits = ["apples","oranges"]; //

  fruits.add("kiwis"); // kivis  猕猴桃 。 几维 鸟 （鹬鸵）    ， 新西兰人

  fruits.addAll(["grapes","bananas"]);//添加集合


  print("fruits 的长度 ${fruits.length}");
  print("fruits 的索引 2 ${fruits[2]}");
  
  num fIndex = fruits.indexOf("kiwis");

  print("fruits 中的 kiwis 的索引 ${fIndex}");

  print("删除了内容 = ${fruits.removeAt(fIndex)}");//todo 这里返回了，之前删除的对象

  //排序
  fruits.sort((a,b)=>a.compareTo(b));

  for(var str in fruits){
    print("list for fruits== ${str}");
  }

  //set 和list 类似，但无序，可判断 交集  是否是子集，是否包含多个元素，元素是唯一的，



  //map

  var haweiianBeaches = {"oahu":["waikiki","kailua"],
                          "big is lang":["wailea bay","pololu beach"],
                          "kauai":["hanalei","poipu"]};
 var mapTest = new Map();

 var mapTest2 = new Map<int,String>();

 var mapKeys = haweiianBeaches.keys;

  mapKeys.forEach((x)=>print("输出 map 的key  =$x"));//但key 是无序的  迭代输出

  //判断key 是否包含 某个key    list  map  set  都是继承 Iterable
  var keySet = new Set.from(mapKeys); //貌似转成了 set
  var listKey = new List.from(mapKeys);
  print("输出中间是否含有 oahu =${keySet.contains("big")}");
  print("输出中间是否含有 listKey oahu =${listKey.contains("oahu")}");


  print("keys is set = ${mapKeys is Set}");
  print("keys is set = ${mapKeys is List}");
  print("keys is set = ${mapKeys is Map}");
  print("keys is set = ${mapKeys is Iterable}");//是个迭代器

  print("map 是否包含oahu ${haweiianBeaches.containsKey("oahu")}");
  print("map florida ${haweiianBeaches.containsKey("florida")}");
  print("map 是否包含value waikiki= ${haweiianBeaches.containsValue(["waikiki"])}");


  var mapValue = haweiianBeaches.values;
  //迭代器中有一个有意思的函数any，用来检测迭代器中的数据
//当其中一个元素运行函数时return true，那么any的返回值就为true，否则为false
//与之相对的是函数every，要所有函数运行函数return true，那么every返回true
  print("是否包含waikiki= ${mapValue.any((v) => v.indexOf('waikiki') != -1)}");
  print("是否包含waikiki= ${mapValue.every((v) => v.indexOf('waikiki') != -1)}");

  mapValue.forEach((v)=>print("输入出value = ${v}"));
  mapValue.forEach((v)=>print(v.indexOf("waikiki")));

  assert(mapValue.any((v) => v.indexOf('waikiki') != -1));
  


  print("*************************引入包*******************************************");
//  print(sayHello("haha"));
  print(day01.sayHello("haha"));

  print("==那个值大==${max(12, 21)}"); //等 数学函数



}



