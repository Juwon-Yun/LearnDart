void main() async{
  // calculate(1).listen((event) {
  //   print("calculate(1) : $event");
  // });
  //
  // calculate(2).listen((event) {
  //   print("calculate(2) : $event");
  // });
  //

  // stream에서도 await와 비슷한 기능을 사용할 수 있다.
  playAllStream().listen((event) {
    print(event);
  });
}

// Future + Stream
Stream<int> calculate(int number) async*{
  for(int i = 0; i < 5; i++){
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}

// yield*은 해당 stream의 모든 값을 다 가져올 때 까지 기다림
Stream<int> playAllStream() async*{
  yield* calculate(1);
  yield* calculate(1000);
}