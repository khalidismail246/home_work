// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

void main() {
  List<int> nums = [11, 5, 2, 7];
  int target = 16;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] + nums[i - 1] == target) {
      print("[${i - 1},${i}]");
    }
  }
  ;
}
