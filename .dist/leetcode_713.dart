class Solution {
  int numSubarrayProductLessThanK(List<int> nums, int k) {
    int l=0;
    int product=1;
    int ans=0;
    for(int i=0;i<nums.length;i++){
      product*=nums[i];
      while(l<=i){
        if(product>=k){
          product~/=nums[l++];
        }else{
          break;
        }
      }
      ans=ans+i-l+1;
    }
    return ans;
  }
}