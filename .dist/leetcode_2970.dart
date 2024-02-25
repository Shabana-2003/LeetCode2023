class Solution {
  int incremovableSubarrayCount(List<int> nums) {
 int count = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length + 1; j++) {
        List<int> l = List.from(nums.sublist(0, i)..addAll(nums.sublist(j)));
        if (isSorted(l) && l.length == Set.from(l).length) {
          count++;
        }
      }
    }
    return count;
  }
  bool isSorted(List<int> num) {
    for (int i = 0; i < num.length - 1; i++) {
      if (num[i] > num[i + 1]) {
        return false;
      }
    }
    return true;
  }
}