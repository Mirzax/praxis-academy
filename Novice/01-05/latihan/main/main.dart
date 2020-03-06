import 'dart:async';
import 'dart:math';

void main()async{

  try {
    
  
  var x = await four();
  print(x);
  print('Hhmm..');
  await hello();

  print("wait. . .");
  var y = await getPengguna(25);
  print('Wellcome! ${y.firstName} ${y.lastName} with ID : ${y.id}');

  await Future.forEach([1,2,3,4,5,6,7,8,9,10], (int n) => 
    isPrimeNumber(n)
    .then((x) => print("${n}${x ? " is" : " is not"} a prime number")));
  
  var result = await openFile("theFile");
    print("success!");
  print('done!');

  
  }catch(e) {
    print("Looks like we caught an error: ${e.toString()}");
  }
}
  
  Future<int> four() async {
    return 9;
    }
  Future<Pengguna> getPengguna(int id) async{
    await Future<Pengguna>.delayed(const Duration(seconds: 6));
    var e = new Pengguna(id, 'Zakku', 'Hiyano');
    return e;
  }
  Future<bool> isPrimeNumber(int number) async {  
  if (number == 1) return false;
  if (number == 2) return true;

  double mysqrt = sqrt(number);
  int limit = mysqrt.ceil();

  for (int i = 2; i <= limit; ++i)  {
    if (number % i == 0)  return false;
  }

  return true;
}
  Future<void> openFile(String fileName) async {
  throw new Exception("boom!");
}

void hello() async {
  print('Good Morning!');
}

class Pengguna {
  int id;
  String firstName;
  String lastName;
  
  Pengguna(this.id, this.firstName, this.lastName);
}

