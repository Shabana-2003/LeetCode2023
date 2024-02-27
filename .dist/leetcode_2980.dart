class Solution {
  bool hasTrailingZeros(List<int> nums) {
     int count = 0;
    for (int i in nums) {
      if (i % 2 == 0) {
        count += 1;
      }
      if (count == 2) {
        return true;
      }
    }
    return false;
  }
}