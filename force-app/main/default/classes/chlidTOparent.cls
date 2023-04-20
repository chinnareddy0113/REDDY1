public class chlidTOparent {
public static void childToParent(list<child__c> child){
        list <parent__c> newparent = new list <parent__c> ();
   
        for(child__c child2: child){
            if(child2.parentlookup__c==null){
                child2.parentlookup__c='chinna';
             parent__c parent =new parent__c();
                parent.Id=child2.Id;
            parent.parentName__c= child2.name__c;
            parent.phoneNumber__c=child2.phone__c;
            newparent.add(parent);
                
            }
               
            
        }
    if(!newparent.isempty()){
        insert newparent;  
    }
    
      
    }
    public static void  updateChild(list<parent__c> pp){
        list<child__c> cc= new list <child__c>();
        for(parent__c p1:pp){
            child__c c1=new child__c();
            if(c1.parentlookup__c==null){
                c1.parentlookup__c=p1.id;
                cc.add(c1);
            }
            update cc;
        }

    }
    public static void childToParent1(list<child__c> child){
         List<child__c> child2 = new List<child__c>();
    List<parent__c> newparent = new List<parent__c>();
    for (child__c child1 : child) {
        // We're inserting a value into a field of the initial record
        child__c child11 = new child__c();
     //   parent1.Id = child1.parentlookup__c;
      
        child11.name__c = 'chinnaReddy';
        child2.add(child11);
        
        // Create a task related to the Lead
       parent__c parent1 = new parent__c();
        parent1.Name  = child11.Name;
        parent1.Id    = child11.Id;
        parent1.phoneNumber__c =child11.phone__c ;
        newparent.add(parent1); 
         child11.parentlookup__c=parent1.id;
    }
        

    insert newparent;
            update child2;
    }
    
}