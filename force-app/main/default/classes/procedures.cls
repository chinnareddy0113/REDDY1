public class procedures {
    
    integer num1 =45;
    integer num2 =23;
    
    //parameterized procedure
    public void addtion(integer num1, integer num2){
        integer num23 = num1+num2;
        
        system.debug('addtion ===='+(num1+num2));
    }
    
    //non parameterized procedure
    public void mulitiplication (){
        system.debug('multiplication ...'+(num1*num2) );
    }
    
    
}