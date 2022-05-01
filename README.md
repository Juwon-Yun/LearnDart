#### this repo is Learning and Implements Company Project

Based on Flutter 2.8.1, Dart SDK 2.15.1 (null safety)
<details>
<summary> basic dart </summary>

```dart
    1. var 동적할당, 재선언 불가
    2. dynamic 동적할당, 재선언 가능
    3. String 
    4. ${   backtic
    5. String? nullable, ?가 없으면 null 불가
    6. String notNullable!, !는  불용
    7. final 런타임에 값을 몰라도된다. 상수 역활
    8. const 런타임에 값을 알고 있어야한다. 상수 역활
    9. ??=  es6 question mark와 비슷하다. 널이라면 대입해라.
    10. type check operator는 is 로 쓴다. 
    11. !is와 is!을 차이를 알아야 한다.
        - !is는 null을 체크하는 것
        - is!는 타입이 맞으면 false를 리턴한다.
    12. List
        - add 
        - remove(key)
        - asMap
        - 기타 내장 메소드들.
    13. Map
        - keys
        - values
        - addAll
        - remove(key)
    14. Set
        - contains
    15. for Loop
        - Literal for
        - for in
    16. while loop (do while)
    17. enum
    18. function (num, int 차이점)
        - optional parameter
        - named parameter
        - required parameter
        - positional parameter
    19. arrow function
    20. typedef and signature
        - typedef의 signature parameter에 required 매개변수 확인 필요
```
</details>

<details>
    <summary> oop dart </summary>

```dart
    1. constructor
      - class.fromList()
      - imutable programming
      - const constructor함
    2. getter, setter
      - () x, {} o
    3. underScore private
    4. inferitance
      - super()
      - type comparition
      - override
    5. static instance
    6. interface
    7. abstract
    8. generic

```
</details>

<details>
    <summary> functional dart </summary>

```dart
    1. casting
    2. map()
    3. MapEntry()
    4. where, find()와 비슷
    5. reduce, 배열 연산 js reduce()와 비슷
    6. fold reduce의 toString과 값이 다르다 참고하자.
    7. cascading operator, es6의 spread와 같다.
    8. MapToClass
```
</details>


<details>
    <summary> async dart </summary>

CPU를 효육적으로 사용할 수 있는 프로그래밍 기법 
java thread,
go goroutine
dart는 future이다.

```dart
    
```

</details>