void mian() {
  print(search([-1, 0, 3, 5, 9, 12], 9));
}

int search(List<int> nums, int target) {
  int strat = 0;
  int end = nums.length - 1;
  while (strat <= end) {
    int mid = (strat + end) ~/ 2;
    if (nums[mid] == target) {
      return mid;
    }
    if (nums[mid] < target) {
      strat = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}
