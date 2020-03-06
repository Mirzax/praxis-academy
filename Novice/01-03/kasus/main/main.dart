import 'dart:convert';
import 'dart:io';

void main(){

  var menu = Menu();
  var cek = Check();
  var wit;
  var sel;
  var dep;
  int deposit = 0;
  int withdraw = 0;
  int check = 0;
  print('==================================');
  print('\tWELCOME TO THIS SIMPLE ATM');
  print('----------------------------------');
  print('');
  
do {
  
  do {
  
    menu.show();
    sel = stdin.readLineSync();
      
    if (int.parse(sel) > 4){
      print('\n\tPlease select correct transaction.');
    }
    else if (int.parse(sel) == 0){
      print('\n\tPlease select correct transaction.');
    }
    else{
      //print('Okay!');
      switch (int.parse(sel)) {
        case 1: 
          print('\n\tEnter the amount of money to deposit : ');
          dep = stdin.readLineSync();
          //check = deposit + int.parse(dep) - wit;  
          deposit = int.parse(dep);
          //print(dep);
          break;
        case 2:
          print('\n\tEnter the amount of money to withdraw : ');
          wit = stdin.readLineSync();
          withdraw = int.parse(wit);
          cek.zero();
          break;
        case 3:
          print("\tYour current balance is : $check");
          break;
        default:
          print('\n\tTransaction exited.');
        break;
      }
    }
    
  }while (int.parse(sel) > 4);
  check = deposit  - withdraw;
  // print(deposit);
  // print(check);
  
} while (int.parse(sel) != 4);

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

class Check {
  int check = 0, withdraw = 0;
  void zero(){
  if(check == 0)
        {
            print("\tYour current balance is zero.");
            print("\tYou cannot withdraw!");
            print("\tYou need to deposit money first.");
        }
        else if(check<=500)
        {
            print("\tYou do not have sufficient money to withdraw");
            print("\tChecked your balance to see your money in the bank.");
        }
        else if(withdraw > check)
        {
            print("\tThe amount you withdraw is greater than to your balance");
            print("\tPlease check the amount you entered.");
        }
        else
        {
            check = check - withdraw;
            print("\n\tYou withdraw the amount of Php $withdraw");
        }
  }
}


