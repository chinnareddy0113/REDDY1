trigger loantrigger on loan__c (after update , after insert) {
    if(trigger.isafter && (trigger.isinsert|| trigger.isupdate)){
        loan.loanupdate(trigger.new);
    }
    
    

}