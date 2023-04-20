@isTest
public class test22 {
    @testSetUp 
    public static void method1(){
        list <Account> accc = new list <Account>();
        Account acc=new Account();
        acc.name= 'chinnareddy';
        acc.status__c = null;
        //acc.adderror('please select any value');
        accc.add(acc) ;
         Account acc1 =new Account();
        acc1.name= 'chinna1';
        acc1.status__c ='created' ;
        accc.add(acc1) ;
         Account acc2 =new Account();
        acc2.name= 'chinna2';
        acc2.status__c ='Closed' ;
        accc.add(acc2) ;
        Account acc4 =new Account();
         acc4.name= 'chinna3';
        acc4.Description=null;
        acc4.Description='please enter any description';
        accc.add(acc4) ;
         Account acc5 =new Account();
        acc5.name= 'chinna5';
        acc5.city__c='Anantapur';
        accc.add(acc5) ;
        Account acc6 =new Account();
        acc6.name= 'chinna5';
        acc6.AnnualRevenue=1;
        accc.add(acc6) ;
        insert accc;
        
    }
    @isTest
    public static void  method2(){
        List<Account> accList=[select Id,Name,status__c, Description,phone from Account];
        list<contact> conlist=[select AccountId from contact ];
        
        accountexample1.accounttocontact(accList);
        accountexample1.accounttocontactupdated(accList);
        
       // accountexample1.makemandataryfieldstatus(accList);
        //accountexample1.defaultdescription(accList);
        //accountexample1.defaultstatus(accList);
        //accountexample1.changedescrption(accList);
        
        
       
    }
}