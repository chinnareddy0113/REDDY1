@isTest
public class countriestextfieldUpdateTest {
    @testSetUp
    private static void method1(){
        list<country__c> pcc= new list<country__c>();
        country__c pc = new country__c ();
        pc.Name='pak';
        pc.satatus__c='india';
        pcc.add(pc);
        country__c pc1 = new country__c ();
        pc1.Name='pak1';
        pc1.satatus__c='empty';
        pcc.add(pc1);
        insert pcc;
        list <countryy__c> crtt=new list <countryy__c>();
        countryy__c crt =new countryy__c ();
        crt.Name ='chinna';
        crt.countries__c='india';
        crt.countrylookup__c=pc.Id;
        crtt.add(crt);
        countryy__c crt1 =new countryy__c ();
        crt1.Name ='chinna1';
        crt1.countries__c='india';
        crt1.countrylookup__c=pc1.Id;
        crtt.add(crt1);
        insert crtt;
    }
    @isTest 
    private static void method2(){
        list <countryy__c> obj =[select id, name,countrylookup__c from countryy__c ];
         map <Id,countryy__c> obmj=new map <Id,countryy__c>();
        for(countryy__c ob1:obj){
            obmj.put(ob1.Id,ob1);
        countriestextfieldUpdate.selectcountry(obj, obmj);
    }

    }
}