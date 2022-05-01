import 'dart:async';

void main(){
   // Future와의 차이점
  final controller = StreamController();
  // final stream = controller.stream;
  // asBroadcasting을 사용하지 않으면 리스너를 여러개 사용못함
  final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.listen((event) {
    print("listener 1 : $event");
  });

  final streamListener2 = stream.listen((event) {
    print("listener 2 : $event");
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}

