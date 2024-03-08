class Solution {
  int maxFrequencyElements(List<int> nums) {
    Map<int,int> map={};
    int result=0;
    nums.forEach((element){
        if(map.containsKey(element)){
            map[element]=map[element]!+1;
        }else{
            map[element]=1;
        }
    });
    int max=0;
    map.forEach((key,value){
        if(value>max){
            max=value;
        }
    });
    map.forEach((key,value){
        if(value==max){
            result+=value;
        }
    });
    return result;
  }
}