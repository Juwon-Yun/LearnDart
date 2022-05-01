void main() async{
  calculate(1).listen((event) {
    print("calculate(1) : $event");
  });

  calculate(2).listen((event) {
    print("calculate(2) : $event");
  });

}

// Future + Stream
Stream<int> calculate(int number) async*{
  for(int i = 0; i < 5; i++){
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}