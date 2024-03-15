class Solution {
  List<int> productExceptSelf(List<int> nums) {
      var list = List.filled(nums.length,0);
      int prod = 1;
      for(int i =0; i<nums.length;i++){
        list[i] = prod;
        prod*=nums.elementAt(i);
        }
        prod = 1;
        for(int i=nums.length-1; i>=0; i--){
          list[i] = prod*list[i];
          prod*=nums[i];
        }
      return list;
  }

}