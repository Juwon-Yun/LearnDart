// typedef _Operation = int Function(int x, int y, int z);
//
// int add(int x, int y, int z) => x + y + z;
//
// int subtract(int x, int y, int z) => x - y - z;
//
// double calculate(int x, int y, int z) => x * y / z;

typedef GeeksForGeeks = Function(int a, int b);

Geek1(int a, int b){
  print("this is geek1");
  print("$a and $b are lucky geek numbers!");
}

Geek2(int a, int b){
  print("this is geek2");
  print("$a + $b is equal to ${a + b}.");
}

void main(){
    // remind typedef
    GeeksForGeeks geeks = Geek1;

    geeks(1, 2);

    geeks = Geek2;

    geeks(1, 2);
}

