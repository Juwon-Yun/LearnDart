void main(){

  Dog dog = Dog("강아지", 2);
  dog.sayName();
  dog.sayEyeCount();

  Cat cat = Cat("고양이", 3);
  cat.sayName();
  cat.sayEyeCount();
  cat.sayMaou();

  // 상속을 했을떄 dog는 부모클래스 타입을 상속받기 때문에 true이다.
  print(dog is Animal);
  print(cat is Animal);
  print(cat is Dog);

  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

// 상속
class Animal{
  String name;
  int eyeCount;

  Animal({
    required this.name,
    required this.eyeCount
  });

  void sayName(){
    print("${this.name}입니다.");
  }

  void sayEyeCount(){
    print("${this.name}은 눈이 ${this.eyeCount}개 입니다.");
  }
}

class Dog extends Animal{
  // 상속할떄 부모의 생성자도 값을 넣어주면된다.
  // 무조건 부오 -> 자식으로 속성을 넘긴다.

  Dog(
      String name,
      int eyeCount,
      ) : super(
    name: name,
    eyeCount: eyeCount
  );
}

class Cat extends Animal{
  Cat(String name, int eyeCount) : super( name: name, eyeCount: eyeCount);

  void sayMaou(){
    print("Maout");
  }
}

class TimesTwo{
  final int number;

  TimesTwo(this.number);

  int calculate(){
    // int number = 0;
    return number + 2;
  }
}

class TimesFour extends TimesTwo{
  TimesFour( int number ) : super( number);

  @override
  int calculate(){
    // return super.calculate() * 2; 8
    // return super.number * 2; 4
    return super.calculate() * 2;
  }
}