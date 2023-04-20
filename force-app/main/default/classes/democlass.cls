public class democlass {
    public void demomethod (){
        account acc = new account();
        acc.name = 'test ';
        acc.Phone = '123456';
        system.debug('statement'+acc);
        
        college__c clg  = new college__c ();
        clg.Name = 'chinna';
        clg.email__c = 'chinna@gmail.com';
        system.debug('statement'+clg);
    }
   

}