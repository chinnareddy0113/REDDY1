@isTest
public class test4 {

    @testSetUp
    public static void method1(){
       Account acc=new Account();
        acc.Name= 'chinnareddy';
        acc.city__c='Anantapur'; 
        acc.no_of_records__c=3;
        insert acc;
    }
    @isTest
    public static void method2(){
        list<Account> acclist= [select Id, Name,city__c,no_of_records__c, Phone from Account];
        example4.restrictchildrecord(acclist);
         //for(integer i=0;i<6;i++){
          Account acc = new Account();
         // acc.Name = 'chinnareddy'+i;
    //}
}
}