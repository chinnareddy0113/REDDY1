@isTest
public class obbjecttriggerTest {

       Private static testMethod void createobject(){
        object__c ob =new object__c();
        ob.Name='chinna';
        ob.cost__c=100;
        insert ob;
        ob.cost__c=102;
        ob.Name='reddy';
        upsert ob;
        delete ob;
        
    }
}