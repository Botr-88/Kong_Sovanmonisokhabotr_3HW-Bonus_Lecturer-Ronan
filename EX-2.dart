class BankAccount {
  final int accountId;
  final String accountOwner;
  double _balance = 0;
  BankAccount(this.accountId, this.accountOwner);
  double balance() {
    return _balance;
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("successful withdraw ${amount}");
    } else {
      print("Not enough money");
    }
  }

  void credit(double amount) {
    _balance += amount;
    print("Money added ${amount}");
  }
}

class Bank {
  final List<BankAccount> accounts = []; // private
  BankAccount? createAccount(int accountId, String accountOwner) {
    for (var acc in accounts) {
      if (acc.accountId == accountId) {
        print("Account ID already exists");
        return null;
      }
    }
    BankAccount newAccount = BankAccount(accountId, accountOwner);
    accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank bank = Bank();
  var acc1 = bank.createAccount(1, "botr");
  if (acc1 != null) {
    acc1.credit(500); // add amount
    print("Current Balance after add");
    print(acc1.balance());
    acc1.withdraw(200); // withdraw money
    print("current balance after withdraw");
    print(acc1.balance()); // remain ed money
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
}
