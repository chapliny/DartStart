/*
在Dart中类和接口是统一的，类就是接口
如果你想重写部分功能，那么你可以继承一个类
如果你想实现某些功能，那么你也可以实现一个类

使用abstract关键字来定义抽象类，并且抽象类不能被实例化
抽象方法不需要关键字，直接以分号 ; 结束即可
 */

main(){
  Rectangle r = new Rectangle(2, 1);
  print("===类实现一个抽象类的方法指为：${r.perimeter()}");
  Square square = new Square(10);
  print("===类继承一个类的方法Square值为：${square.perimeter()}");


  var logger = new Logger('UI');
  logger.log('====日志  ;Button clicked');


  StringBuffer sb = new StringBuffer();
  sb.write("Use a StringBuffer ");
  sb.writeAll(['for ', 'efficient ', 'string ', 'creation ']);
  sb..write('if you are ')..write('building lots of string.');

  print("String Buffer :${sb.toString()}");

  sb.clear();









}
//抽象类
abstract class shape{
  num perimeter();//抽象方法，不需要abstract 关键字，是隐私接口的一部分；
}

class Rectangle implements shape{
  final num height,width;

  Rectangle(this.height,this.width);
  @override
  num perimeter() =>2*height+3*width;
}

class Square extends Rectangle{// Square 继承 Rectangle
  Square(num size): super(size,size); //调用超类的构造函数
}


class Logger{
  final String name;
  bool mute = false;
  static final  Map<String,Logger> _cache = <String,Logger>{};

  factory Logger(String name){
    if(_cache.containsKey(name)){
       return _cache[name];
    }else{
      final logger = new Logger._internal(name);
      _cache[name]= logger;
      return logger;
    }
  }
  Logger._internal(this.name);

  void log(String msg){
    if(!mute){
      print(msg);
    }
  }
}


