void main(){
  List<int> numbers = [1, 2, 3, 4];

  final reduced = numbers.reduce((prev, next) =>
     prev + next);

  print(reduced);

  List<String> words = ["hi", "dart", "i'm juwon"];

  final reducedWord = words.reduce(
          (value, element) => (value.length + element.length).toString());

  print(reducedWord);

  // js의 reduce처럼 초기값을 정한다. 하지만 타입 제네릭을 필수로 만들어야함
  final foldNumbers = numbers.fold<int>(10, (prev, next) => prev + next);
  
  print(foldNumbers);

  final foldWordLength = words.fold<int>(0, (prev, next) => prev + next.length);

  print(foldWordLength);
  // toString 값과 다르다. 참고하자

  List<int> even = [2,4,6];
  List<int> odd = [1,3,5];

  // dart에서는 cascading operator라고 부른다.
  print([...even, ...odd]);

  // 결과값은 역시 기존 값과 다른 주솟값을 갖는다.
}