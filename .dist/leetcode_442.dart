class Solution {
  List<int> findDuplicates(List<int> nums) {
    List<int> result = [];
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          result.add(nums[j]);
          break;
        }
      }
    }
    return result;
  }
}
