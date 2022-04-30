void main(){
  Lecture<String, String> lecture1 = Lecture("1", "lec1");
  lecture1.printType();
  Lecture<int, String> lecture2 = Lecture(2, "lec2");
  lecture2.printType();
}

// <T>를 이용해서 제네릭에 들어오는 타입으로 인스턴스 변수의 타입을 정할 수 있다.
class Lecture<T, X>{
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printType(){
    print("${id.runtimeType.toString()} ${name.runtimeType.toString()}");
  }
}