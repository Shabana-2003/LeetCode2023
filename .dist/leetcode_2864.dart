class Solution {
  String maximumOddBinaryNumber(String s) {
   List<String>ss=s.split('');
   ss.sort((a,b)=>int.parse(b).compareTo(int.parse(a)));
  ss.removeAt(0);
  ss.add('1');
return ss.join();
  }
}