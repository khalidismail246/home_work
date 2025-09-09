//
void main() {}

bool containsDuplicate(List<int> nums) {
  Set<int> number = {};
  for (int i = 0; i < nums.length; i++) {
    if (number.contains(nums[i])) {
      return true;
    } else {
      number.add(nums[i]);
    }
  }
  return false;
}
