@isTest
public class childtoparentTest {
 @testSetup
    Private static void employeeTest(){
        list <child__c> emplist=new list <child__c>();
        child__c emp = new child__c();
        emp.phone__c = '9098760987';
        emplist.add(emp);
        child__c emp1 = new child__c();
        emp1.phone__c = '9098760117';
        emplist.add(emp1);
      insert emplist;
    }
     @isTest
    public static void testemp(){
        list<child__c> newlist= [Select id, name, parentlookup__c, phone__c from child__c];
     childTOPArentlookup.childinstparentinst(newlist);
         
    }}