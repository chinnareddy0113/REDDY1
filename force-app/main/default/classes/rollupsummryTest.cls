@isTest
public class rollupsummryTest {
    @testSetup
    static void createTestData() {
        // create test records for student__c
        List<student__c> studentList = new List<student__c>();
        student__c st = new student__c();
        st.name= 'Student 1';
        studentList.add(st);
        student__c st1 = new student__c();
        st1.name= 'Student 2';
        studentList.add(st1);
        insert studentList;
        // create test records for object__c
        List<object__c> objectList = new List<object__c>();
        object__c ob= new object__c();
        ob.name='chinna';
        ob.studentobject__c=st.Id;
        ob.cost__c=10;
        objectList.add(ob);
        object__c ob1= new object__c();
        ob1.name='chinna1';
        ob1.studentobject__c=st.Id;
        ob.cost__c=20;
        objectList.add(ob1);
        object__c ob2= new object__c();
        ob2.name='chinna';
        ob2.studentobject__c=st1.Id;
        ob2.cost__c=10;
        objectList.add(ob2);
        insert objectList;
        
        objectList[0].cost__c=21;
        update objectList;
        
    }
    
    @isTest
    static void testRollupmethodtoobjectndstudent() {
        // call the rollup method with the test data
        
        list <object__c> obj=[SELECT Id, studentobject__c, cost__c FROM object__c];
        map <Id,object__c> obmj=new map <Id,object__c>();
        for(object__c ob1:obj){
            obmj.put(ob1.Id,ob1);
        }
        roolupsummary.rollupmethodtoobjectndstudent(obj,obmj);
        roolupsummary.rollupmethodtoobjectndstudent(null,obmj);
     
    }
}