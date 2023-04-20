trigger studenttrigger on students__c (before insert , before update) {
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        studentmarksandgrade.studentmarksandgrade(trigger.new);
    }

}