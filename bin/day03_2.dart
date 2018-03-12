library my.mach;

// math.dart文件开头
//library math;
//part 'point.dart';
//part 'random.dart';

// point.dart文件开头
//part of math;

// random.dart文件开头
//part of math;

//

main(){
  /**
   * 为了维护一个库，我们可以把各个功能放到各个dart文件中
      但part of所在文件不能包括import、library等关键字
      可以包含在part关键字所在文件中

      建议避免使用part和part of语句，因为那样会使代码很难阅读、修改，可以多用library
      part加字符串类型的Uri类似include，表示包含某个文件
      part of加库名表示该文件属于那个库
   */

  // 利用Pub管理自己的库
  // yaml 的方式管理

}


