class Solution {
  int firstMissingPositive(List<int> nums) {
    int s = 1;
    int numsLength = nums.length;

    nums.sort();

    for (int i = 0; i < numsLength; i++) {
      if (nums[i] == s) {
        s = s + 1;
      }
    }

    return s;
  }
}
