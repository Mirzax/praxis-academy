


void main(){
  var use1 = User();
  var use2 = new User();
  use1.setName('Maria');
  use1.setCode(1357);
  use2.setName('Yohanes');
  use2.setCode(2468);  

  print('Name     : ${use2.name_}');
  print("Code     : ${use2.code_}");

  var op = Senior();
  print('Mentor   : ${op.name_}');
                      //V MENAMPILLKAN TIPE DATA YANG DITUNJUK V//
  print("Type of 'name' is ${use1.name_.runtimeType}, and the 'code' is ${use1.code_.runtimeType}");

  var poin = Poin.minim();
  poin.exam = 4.7;
  //poin.test = 3.0;
  print('exam poin : ${poin.exam}');
  print('task poin : ${poin.task}');
  print("test poin : ${poin.test}");

  //Poin.withAssert(this.exam, this.task) :  assert(x >= 0){ //???
  //  print('In Poin.withAssert() : (${poin.exam}, ${poin.task} ')
  //}
}

class User {
  String name_;
  var code_;

  String getName(){ //DATA UBAH MASUK
    return this.name_;
  }
  void setName(String name){  //DATA DI-SET
    this.name_ = name;
  }
  int getCode(){
    return this.code_;
  }
  void setCode(int code){
    this.code_ = code;
  }
}

class Senior { //SATU PAKET ISIAN DATA
  String name_ = 'David';
  var code_ = 0001;
}

class Poin {
  num exam , task , test = 10.0;

    Poin(this.exam, this.task);
    Poin.minim(){ //<<BERLABEL
      exam = 2.5;
      task = 2.0;
    }
}

class Employee extends Senior { // what is this!?
//  Employee() : super.fromJson(defaultData);
} 

