class Solution {
    int subarraysWithKDistinct(List<int> nums, int k) {
        int solve(int k) {
            var l = 0;
            var r = 0;
            Map<int, int> m = {};
            var res = 0;
            while (r < nums.length) {
                m[nums[r]] = (m[nums[r]] ?? 0) + 1;
                while (m.length > k) {
                    m[nums[l]] = m[nums[l]]! - 1;
                        if (m[nums[l]] == 0) {
                            m.remove(nums[l]);
                        }
                    l += 1;
                }
                res += (r - l + 1);
                r += 1;
            }
            return res;
        }

        final atMostK = solve(k);
        final atMostKMinusOne = solve(k - 1);
        return atMostK - atMostKMinusOne;
    }
}