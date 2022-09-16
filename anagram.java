//cerner_2tothe5th_2022
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
public class anagram {
    public static void main(String[] args) {
        String s = "abcabcabcabcbcacba";
        String p = "abc";
        List<String> res = new ArrayList<String>();
        HashMap<Character,Integer> givenstring = new HashMap<Character,Integer>();
        HashMap<Character,Integer> anagramstring = new HashMap<Character,Integer>();
        for(char ch:p.toCharArray()) {
            if(givenstring.containsKey(ch)) 
            	givenstring.put(ch, givenstring.get(ch)+1);
            else givenstring.put(ch, 1);
        }
        for(int i = 0;i < s.length()-(p.length()+1);i++) {
            String substr = s.substring(i, i+p.length());
            anagramstring.clear();
            for(char ch:substr.toCharArray()) {
                if(anagramstring.containsKey(ch)) anagramstring.put(ch, anagramstring.get(ch)+1);
                else anagramstring.put(ch, 1);
            }        
        if(anagramstring.equals(givenstring)) res.add(substr);
        i = i + p.length();
        }
        System.out.println(res);        
    }
}