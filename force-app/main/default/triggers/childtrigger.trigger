trigger childtrigger on child__c (after insert ,  after update) {
    if(trigger.isafter && trigger.isinsert){
        childTOPArentlookup.childinstparentinst(trigger.new);
    }
    if(trigger.isafter && trigger.isupdate){
        for(child__c chlid :trigger.new){
            if(chlid.phone__c !=trigger.oldmap.get(chlid.id).phone__c){
                childTOPArentlookup.childinstparentinst(trigger.new); 
            }
        }
        
    }
    
    
}