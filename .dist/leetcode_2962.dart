class Solution {
    int countSubarrays(List<int> nums, int k) {
        final m = nums.fold<int>(
            nums.first,
            (p, e) => max(p, e),
        );
        final l = nums.length;
        var count = 0, result = 0;
        for(var i = 0, j = 0; j < l;) {
            while(j < l && count < k) {
                if(nums[j] == m) {
                    ++count;
                }
                ++j;
            }
            while(i < j && count == k) {
                if(nums[i] == m) {
                    --count;
                }
                result += (l - j + 1);
                ++i;
            }
        }
        return result;
    }
}