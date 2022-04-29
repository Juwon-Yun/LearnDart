void main(){
  print(addNumbers( 10, b : 20, c : 30));
  print(arrowAddNumbers( 10, 20, y: 10));

  // Operation operation = add(z, y, z);

}

// optional parameter [] 로 묶는다.
// named parameter - 순서가 중요하지 않는 매개변수
// 리턴타입 생략시 자동으로 dynamic 타입 함수가 됨.
// addNumbers(
String addNumbers( int a,
{
  // required를 생략하는 보통의 방식은 positional 방식
  required int b,
  // required int c
  int c = 10 // positional
}) {
// addNumbers(int a, [int? b, int? c]){
  // 왜 int a, b, c를 하면 셋다 int형 타입이 아니라
  // a만 int 이고 b,c는 num 이지?
  print(a.runtimeType.toString() + " a : $a");
  print(b.runtimeType.toString() + " b : $b");
  print(c.runtimeType.toString() + " c : $c");

  int sum = a + b + c;
  if(sum % 2 == 0){
    return "짝수 입니다";
  }else{
    return "홀수 입니다";
  }

}

arrowAddNumbers(int x, int z, {
  required y,
}) => x + y + z;

// typedef 함수, signature라고 부른다.
typedef Operation = int Function(int x, int y, {required int z});

int add(int x, int y, int z) => x + y + z;