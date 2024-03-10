//2965. Find Missing and Repeated Values

class Solution {
  List<int> findMissingAndRepeatedValues(List<List<int>> grid) {
        int n = grid.length;
        
     Set<int> nums = Set.from(Iterable.generate(n * n, (index) => index + 1));
    List<int> res = [];

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (nums.contains(grid[i][j])) {
          nums.remove(grid[i][j]);
        } else {
          res.add(grid[i][j]);
        }
      }
    }

    return [...res, nums.elementAt(0)];
  }
}