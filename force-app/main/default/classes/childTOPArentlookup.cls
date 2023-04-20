public class childTOPArentlookup {
       public static void childinstparentinst(list<child__c> childlst){
        set<id> stdId = new set<id>();
        for(child__c std:childlst){
            stdId.add(std.Id);
        }
        Map<Id,parent__c> tecUpdateRec=new Map<Id,parent__c>();
        List<child__c> stdUpdateRec=new List<child__c>();
        Map<Id,child__c> stdRec =returningchild(stdId);
        if(stdRec.size()>0){
            for(child__c std2:stdRec.values()){
               parent__c tec=createParentRecord(std2);
               tecUpdateRec.put(std2.Id,tec);
            }
        }
           
        if(tecUpdateRec.size()>0){
           upsert tecUpdateRec.values();
        }
       for(child__c std3:stdRec.values()){
           if(std3.parentlookup__c==NULL){
            std3.parentlookup__c=tecUpdateRec.get(std3.Id).Id; 
            stdUpdateRec.add(std3);
           }}
        if(stdUpdateRec.size()>0){
            update stdUpdateRec;
        }
          
    }
    
    public static parent__c createParentRecord(child__c stdlst1){
        parent__c Teach= new parent__c();
        Teach.Id = stdlst1.parentlookup__c;
        Teach.Name = stdlst1.Name;
        Teach.phoneNumber__c = stdlst1.phone__c;
       
        return Teach;
    }    
    public static map<id,child__c> returningchild(set<id> empid){
        return new map<id,child__c>([select id, Name,parentlookup__c, phone__c from child__c where Id IN : empid]);
    }
  
}