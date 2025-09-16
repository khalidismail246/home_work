class Grade {
  int? _score;
  set score(int score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else {
      print("Invalid score");
    }
  }

  int get score => this._score!;
  bool isPass() {
    if (_score! >= 50) {
      return true;
    }
    return false;
  }
}
