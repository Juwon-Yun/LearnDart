void main () {
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

  // nullable - null 가능
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.

  // String nameNull = null;
  // value of type 'Null' can't be assigned to a variable of type 'String
  // String 타입에는 null에 들어 갈 수 없다.

  // ? <-- nullable
  String? nameNullable = "윤주원";
  nameNullable = null;
  print(nameNullable);

  // 널이 절때 될 수 없다. 즉 현재 이 값은 널이 아니다.
  // print(nameNullable!); // Null check operator used on a null value 에러 발생.

  final String finalName = "윤주원";

  // finalName = "다트주원"; 역시 변수의 값을 재할당 불가능하다.

  // 빌드 과정에  컴파일이 now를 읽는 시간에 시간이 나온다.
  // 빌드 타임에 값을 몰라도됨
  final DateTime finalNow = DateTime.now();

  // 빌드 타임에 값을 알고 있어야한다.
  // 컴파일러가 바이너리로 코드를 읽을 때 알고 있어야하지 코드를 읽는 순간의 시간값을 알기 때문에 에러가남
  // 빌드 타임에 값을 무조건 알아야함
  // const DateTime constNow = DateTime.now();
  // print(now);

  int iterNum = 2;
  
  print(iterNum + 2);
  print(iterNum % 2);
  print(iterNum % 3);

  iterNum++;
  print(iterNum);
  iterNum--;
  print(iterNum); // 2가 나옴 ++, -- 한 후에 값에 저장한다.

  double? number = 4.0;
  number += 1;
  print(number.runtimeType);

  number = null;
  print(number.runtimeType);
  // number가 null이라면 3.0을 저장해라,
  number ??= 3.0;
  print(number);

  // type 비교 operator
  int numberIsInteger = 1;
  print(numberIsInteger is int);
  // print(numberIsInteger !is int); // null 체크 하는거임 false냐고 뭍는게 아니다.
  print(numberIsInteger is! int);


}