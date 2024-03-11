class Solution {
  String customSortString(String o, String s) {
    List<String> str = s.split('');
    String result = '';
    for(int i = 0;i<o.length;i++) {
      if(str.remove(o[i])) result = '$result${o[i]}';
      if(str.indexOf(o[i])!=-1) i--;
    }
    s = result+str.join('');
    return s;
  }
}