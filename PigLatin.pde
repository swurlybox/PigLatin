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
  int index = -1;
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u'){
      index = i;
      break;
    }
  }
  return index;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int dude = findFirstVowel(sWord);
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(dude == 0){
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu")){
    return sWord.substring(findFirstVowel(sWord) + 1) + "quay";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}


//---------------------------------------------THIS SECTION BELOW IS FOR THE LOWELLHYMN TEXT, PLEASE COMMENT OUT ALL THE CODE ABOVE BEFORE USING THE CODE BELOW.

/*public void setup() 
{
  String[] lines = loadStrings("LowellHymn.txt");
  for (int i = 0 ; i < lines.length; i++) 
  {
    //make an array list for words in a line string
    ArrayList <String> words = new ArrayList <String>();
    //check if the word ends, then add the word to the arrayList(words)
    int charStart = 0;
    for(int charIndex = 0; charIndex < lines[i].length(); charIndex++){
      //if the word ends with a space, comma, or period
      //add the string from charStart to current charIndex
      if(lines[i].charAt(charIndex) == ' ' || lines[i].charAt(charIndex) == ',' || lines[i].charAt(charIndex) == '.'){
        words.add(lines[i].substring(charStart,charIndex));
        //puts charStart at the index at the first letter of the next word
        charStart = charIndex + 1;
      }
      //loops back and continues to add new strings to the ArrayList words
    }
    
    //this loop prints out the strings in the ArrayList words
    for(int wordIndex = 0; wordIndex < words.size(); wordIndex++){
      System.out.print(" " + pigLatin(words.get(wordIndex)));
    }
    
    //these if statements are exceptions to add the commas, periods, and blank to each corresponding line.
    if(i == 3 || i == 8){
      System.out.print(".");
    }
    else if(i == 4){
      System.out.print("");
    }
    else{
      System.out.print(",");
    }
    System.out.println("");
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
  int index = -1;
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u'){
      index = i;
      break;
    }
    else if(sWord.charAt(i) == 'A' || sWord.charAt(i) == 'E' || sWord.charAt(i) == 'I' || sWord.charAt(i) == 'O' || sWord.charAt(i) == 'U'){
      index = i;
      break;
    }
    else{
    }
  }
  return index;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int dude = findFirstVowel(sWord);
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(dude == 0){
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu")){
    return sWord.substring(findFirstVowel(sWord) + 1) + "quay";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}*/
