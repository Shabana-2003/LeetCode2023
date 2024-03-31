class Solution {
  bool isOneBitCharacter(List<int> bits) {
    int i = 0;
    while (i < bits.length - 2) {
      if (bits[i] == 1) i++;
      i++;
    }

    return bits[i] == 0;
  }
}