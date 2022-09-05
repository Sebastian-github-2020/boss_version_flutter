class MyTool {
  static MyTool? instance;
  static double designWidth = 375; //设计稿宽度
  double clientWidth = 0;
  double _ratio = 0; // 屏幕宽度/设计稿宽度 比例

  //内部构造方法 ，避免暴露 构造函数 进行实例化
  MyTool._xxx();

  factory MyTool.getInstance(clientWidth) => _shareInstance(clientWidth);

  static _shareInstance(double clientWidth1) {
    instance ??= MyTool._xxx();
    instance?.clientWidth = clientWidth1;
    instance?._ratio = clientWidth1 / designWidth;
    print("屏幕宽度$clientWidth1");
    print("屏幕/设计稿 比例${instance?._ratio}");
    return instance;
  }

  // 宽度
  x(double num) {
    return (instance?._ratio)! * num;
  }

  // 高度
  y(double w, double h) {
    double ratio = w / h;
    print("宽度${x(w)},高度${x(w) / ratio}");
    return x(w) / ratio;
  }
}
