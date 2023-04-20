@isTest
public class test3 {
     @testSetUp 
    public static void method1(){
        list <Account> accc = new list <Account>();
        Account acc=new Account();
        acc.name= 'chinnareddy';
        acc.AnnualRevenue=10;
        accc.add(acc);
        Account acc1=new Account();
        acc1.name= 'chinnareddy';
        acc1.AnnualRevenue=10000;
        accc.add(acc1);
        insert accc;
    }
        @isTest
    public static void method2(){
        list<Account> acclist= [select Id,name,Phone, AnnualRevenue from Account ];
        example3.througherrorinaccount(acclist);
    }
}