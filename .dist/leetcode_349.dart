class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for(int i=0; i<nums1.length; i++){
        if(nums2.contains(nums1[i]) && !result.contains(nums1[i])){
            result.add(nums1[i]);
        }
    }
    return result;
  }
}