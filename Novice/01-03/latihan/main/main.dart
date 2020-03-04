import 'dart:math';


void main(){
  var use1 = User();
  var use2 = new User();
  use1.setName('Maria');
  use1.setCode(1357);
  use2.setName('Yohanes');
  use2.setCode(2468);  

  print('Name     : ${use2._name}');
  print("Code     : ${use2._code}");

  var op = Senior();
  print('Mentor   : ${op._name}');
                      //V MENAMPILLKAN TIPE DATA YANG DITUNJUK V//
  print("Type of 'name' is ${use1._name.runtimeType}, and the 'code' is ${use1._code.runtimeType}");

  var poin = Poin.minim();
  poin.exam = 4.7;
  //poin.test = 3.0;
  print('exam poin : ${poin.exam}');
  print('task poin : ${poin.task}');
  print("test poin : ${poin.test}");

  var pot = Poin;
  
  

  //Poin.withAssert(this.exam, this.task) :  assert(x >= 0){ //???
  //  print('In Poin.withAssert() : (${poin.exam}, ${poin.task} ')
  //}

  //var logger = Logger('UI');  //MANGGIL FACTORY CONSTRUCTOR
  //logger.log('Button clicked');
}

class User {
  String _name;
  var _code;

  String getName(){ //DATA UBAH MASUK
    return this._name;
  }
  void setName(String name){  //DATA DI-SET
    this._name = name;
  }
  int getCode(){
    return this._code;
  }
  void setCode(int code){
    this._code = code;
  }
}
 
class Senior { //SATU PAKET ISIAN DATA
  String _name = 'David';
  var _code = 0001;
}

class Poin {
  num exam , task , test = 10.0;

    Poin(this.exam, this.task);
      Poin.minim(){ //<<BERLABEL
        exam = 2.5;
        task = 2.0;
      }
    Poin.weak(num exam) : this(exam, 0);

  num range(Poin other) {
    var risk = exam - other.exam;
    var potential = other.test / test;
    return risk / potential ;
  }
}
class Default {
  final num exam , test; 
  static final Default minim = 
  const Default(1.5 , 1.5);
  const Default(this.exam, this.test);
}

class Employee extends Senior { // what is this!?
//  Employee() : super.fromJson(defaultData);
} 

class Logger {  //FACTORY CONTRUCTOR
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache =
      <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}






