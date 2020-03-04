import 'dart:convert';
import 'dart:io';

void main(){

  var menu = Menu();

  print('==================================');
  print('\tWELCOME TO THIS SIMPLE ATM');
  print('----------------------------------');
  print('');
  
  
    
  
  do {
    
  menu.show();
  var sel = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var select = int.parse(sel);

  if (select>4){
    print('\n\tPlease select correct transaction.');
  }
  else if (select<1){
    print('\n\tPlease select correct transaction.');
  }
  else{
    
  }
} while (select != 4);
}
class Menu {
  void show(){
  print('\tPlease select ATM Transactions');
  print('\tPress [1] Deposit');
  print('\tPress [2] Withdraw');
  print('\tPress [3] Balance Inquiry');
  print('\tPress [4] Exit');
  print('\n\tWhat do you like to do?');
  }
}
