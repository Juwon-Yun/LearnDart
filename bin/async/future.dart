void main () async{
  // 미래에 받아올 값
  Future<String> name = Future.value("윤주원 미래");
  Future<int> number= Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // print("함수 시작");
  //
  // Future.delayed(Duration(seconds: 2), (){
  //   print("main delay end");
  // });

  await addNumbers(1, 1);
  await addNumbers(2, 2);

  final multipleResult = await multipleNumbers(2, 2);
  print("main multipleResult : $multipleResult");

}

Future<void> addNumbers(int num1, int num2) async{
  print("calculate start : $num1 + $num2");
  
  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), (){
    print("cal end : $num1 + $num2 = ${num1+num2}");
  });

  print("function end");

}

Future<int> multipleNumbers(int num1, int num2) async{
  print("calculate multi start : $num1 * $num2");

  await Future.delayed(Duration(seconds: 2), (){
    print("cal end : $num1 * $num2 = ${num1*num2}");
  });

  print("function end");
  return num1 * num2;

}