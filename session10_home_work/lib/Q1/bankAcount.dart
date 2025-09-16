class Bankacount {
  int? _balance;
  set balance(int balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print("invalid balance");
    }
  }

  int get balance => this._balance!;
}
