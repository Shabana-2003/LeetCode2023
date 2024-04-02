class Solution {
  bool isIsomorphic(String s, String t) {
    
    if(s.length!=t.length){
        return false;
    }
    Map<String,String> w1 = {};
    Map<String,String> w2 = {}; 

    for(int i=0;i<s.length;i++){
        String char1=s[i];
        String char2=t[i];

        if(w1.containsKey(char1)){
            if(w1[char1]!=char2){
                return false;
        }
            }else{
                w1[char1]=char2;
            
        }

        
        if(w2.containsKey(char2)){
            if(w2[char2]!=char1){
                return false;
        }       
            }else{
                w2[char2]=char1;
            }
        }
      
    return true; 

  }
}