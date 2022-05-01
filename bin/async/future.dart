void main (){

  Future<String> name = Future.value("윤주원 미래");
  Future<int> number= Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // print("함수 시작");
  //
  // Future.delayed(Duration(seconds: 2), (){
  //   print("main delay end");
  // });

  addNumbers(1, 1);
  addNumbers(2, 2);
}

void addNumbers(int num1, int num2) {
  print("calculate start : $num1 + $num2");
  
  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), (){
    print("cal end : $num1 + $num2 = ${num1+num2}");
  });

  print("function end");

}