void main (){
  var name = "다트 주원  ";

  name = "다트 ";
  print(name);
  // var name = "주원"; 재선언 불가

  // dynamic number1 = "10"+ 1;
  // 'int' can't be assigned to a variable of type 'String'
  // print(number1);

  String nameStr = "윤주원";
  var nameVar = "윤주원";
  // var는 동적 타입 해준다. := 이랑 같음

  print('$nameStr $nameVar');
  print('$nameStr.runtimeType $nameVar'); // 백틱인데 변수만 사용하는 경우엔 중괄호 삭제함
  print('${nameStr.runtimeType} $nameVar'); // 백틱인데 내장 메소드나 무언가 체이닝을 하려면
  // 괄호를 다 해야함

  dynamic stringToInt = "2";
  print(stringToInt);

  var stringToInt2 = "2";
  print(stringToInt2);

  stringToInt = true;
  // stringToInt2 = false; var로 선언한 변수는 다른 타입으로 재선언 불가능

}