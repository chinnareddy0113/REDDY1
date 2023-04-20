trigger schoolupdate on school__c (after update) {
    if(trigger.isafter && trigger.isupdate){
        school.phoneFieldUpdate(trigger.new, trigger.oldmap);
    }

}