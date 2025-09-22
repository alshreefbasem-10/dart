class BankAccount {
  int _balance = 0;

  int get getbalance => _balance;

  set setbalance(int money) {
    if (money > 0) {
      this._balance += money;
      print("$_balance");
    } else {
      print("money must be greater than 0");
    }
  }
}

void main() {
  BankAccount B = BankAccount();
  B.setbalance = 25;
  print(B.getbalance);
}
