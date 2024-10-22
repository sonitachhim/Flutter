class BankAccount {
  double _balance;
  String accountName;
  int _id;
  BankAccount(this._balance, this.accountName, this._id);

  double get balance => _balance;

  void viewBalance() {
    print('Current balance: $_balance');
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('$amount is paid from $_id');
    } else {
      print('Balance is insufficient');
    }
  }

  void credit(double deposit) {
    _balance += deposit;
    print('$deposit have been deposit into $_id');
  }
}

// class Bank {
//   String bankName;
//   String location;
//   //list of acc
//   List<BankAccount> accounts = [];
//   Bank(this.bankName, this.location);

//   void createAccount(int _id, String accountName){
//     for (var account in accounts) {

//     }
//   }
// }

void main() {
  //create bank acc
  BankAccount account = BankAccount(200, 'han', 1);
  //view balance
  account.viewBalance();
  //deposit
  account.credit(12);
  //withdraw
  account.withdraw(7);
  //withdraw more than in balance
  account.withdraw(500);


  // Bank myBank = Bank(name: "CADT Bank");
  // BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  // print(ronanAccount.balance); // Balance: $0
  // ronanAccount.credit(100);
  // print(ronanAccount.balance); // Balance: $100
  // ronanAccount.withdraw(50);
  // print(ronanAccount.balance); // Balance: $50

  // try {
  //   ronanAccount.withdraw(75); // This will throw an exception
  // } catch (e) {
  //   print(e); // Output: Insufficient balance for withdrawal!
  // }

  // try {
  //   myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  // } catch (e) {
  //   print(e); // Output: Account with ID 100 already exists!
  // }
}
