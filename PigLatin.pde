import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String c=sWord.substring(0,1);
	String d=sWord.substring(1,2);
	if(c.equals("q")&&d.equals("u"))
	{
		return 0;
	}

	
	else if(c.equals("a")||c.equals("e")||c.equals("i")||c.equals("o")||c.equals("u"))
	{
		return 1;
	}


	else
	{
		for(int i=0;i<sWord.length();i++)
		{
			String temp=sWord.substring(i,i+1);
			if(temp.equals("a")||temp.equals("e")||temp.equals("i")||temp.equals("o")||temp.equals("u"))
			{
				return 2;
			}
		}
		return -1;
	}
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		String n= sWord + "ay";
		return n;
	}

	else if(findFirstVowel(sWord)==0)
	{
		String a= sWord.substring(2,sWord.length()) +"quay" ;
		return a;
	}

	else if(findFirstVowel(sWord)==1)
	{
		
		String b=sWord+ "way";
		return b;
	}

	else if (findFirstVowel(sWord)==2) 
	{
		String t="";
		for(int i=0;i<sWord.length();i++)
		{
			String temp=sWord.substring(i,i+1);
			if(temp.equals("a")||temp.equals("e")||temp.equals("i")||temp.equals("o")||temp.equals("u"))
			{
				t=sWord.substring(i-1) + sWord.substring(0,i-1);
			}
		}
		String c=t+ "ay";
		return c;
	}
	else
		return "error";

}
