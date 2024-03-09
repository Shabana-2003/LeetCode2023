class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {
    if(nums1.length<nums2.length){
        if(nums1[0] > nums2[nums2.length-1]){
            return -1;
        }
        int res = getSmall(nums1, nums2);
        return res;
    }else{
         if(nums2[0] > nums1[nums1.length-1]){
            return -1;
        }
        int res = getSmall(nums2, nums1);
        return res;
    }
    return -1;
  }

  int getSmall(List<int> small, List<int> large){
       for(int i in small){
            if(large.contains(i)){
                return i;
            }
        }
        return -1;
  }
}