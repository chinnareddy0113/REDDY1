public class childToParent {
    public static void childToParent(list<child__c> child){
        list <parent__c> newparent = new list <parent__c> ();
        for(child__c child2: child){ 
            parent__c parent =new parent__c();
            parent.parentName__c= child2.name__c;
            parent.phoneNumber__c=child2.phone__c;
            parent.id= child2.Id;
            newparent.add(parent);
        }
        insert newparent;
    }

}