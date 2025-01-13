public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
ArrayList<String> accepted = new ArrayList<String>();
public void setup()  
{
  String digits;
  for(int i = 2; i<e.length(); i++){
    digits = e.substring(i, i+10);
    if(isPrime(Double.parseDouble(digits)) == true){
      System.out.println(digits);
      break;
    }
  }
  for(int i = 2; i<e.length()-9; i++){
    digits = e.substring(i, i+10);
    int sum = Integer.parseInt(digits.substring(0,1)) + Integer.parseInt(digits.substring(1,2)) + Integer.parseInt(digits.substring(2,3)) + Integer.parseInt(digits.substring(3,4)) + Integer.parseInt(digits.substring(4,5)) + Integer.parseInt(digits.substring(5,6)) + Integer.parseInt(digits.substring(6,7)) + Integer.parseInt(digits.substring(7,8)) + Integer.parseInt(digits.substring(8,9)) + Integer.parseInt(digits.substring(9,10));
    //pattern is if sum of the digits is 49
    if(sum == 49){
      accepted.add(digits);
    }
  }
  System.out.println(accepted);
  System.out.println(accepted.get(4));
}
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if(dNum < 2){
      return false;
    }  
    for(int i = 2; i<=Math.sqrt(dNum); i++){
      if(dNum%i == 0){
        return false;
      }
    }
    return true;  
} 
