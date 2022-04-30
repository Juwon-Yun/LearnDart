void main(){
  List<int> numbers = [1, 2, 3, 4];

  final reduced = numbers.reduce((prev, next) =>
     prev + next);

  print(reduced);

  List<String> words = ["hi", "dart", "i'm juwon"];

  final reducedWord = words.reduce(
          (value, element) => (value.length + element.length).toString());

  print(reducedWord);

}