trigger parentTrigger on parent__c (after insert) {
    if(trigger.isafter && trigger.isinsert){
      //  chlidTOparent.updateChild(trigger.new);
    }
}