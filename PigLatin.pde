public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
  

}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  String[] vowel;
  vowel = new String[]{"a","e","i","o","u"};
  for (int i=0;i<=sWord.length()-1;i++)
  {
    for(int j=0;j<5;j++)
    {
      if(sWord.substring(i,i+1).equals(vowel[j]))
      return i;
    }
  }
  return -1;
}

public boolean findQU(String sWord)
{
  if(sWord.substring(0,2).equals("qu"))
  {
    return true;
  }
  return false;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(findQU(sWord) == true)
  {
    return sWord.substring(2) + "quay";
  }
  else if(findFirstVowel(sWord) != 0)
  {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
