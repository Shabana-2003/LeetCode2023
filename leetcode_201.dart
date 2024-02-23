//201. Bitwise AND of Numbers Range

class Solution {
  int rangeBitwiseAnd(int left, int right) {
     while (right > left) {
      right &= (right - 1);
    }
    return right;
  }
}

