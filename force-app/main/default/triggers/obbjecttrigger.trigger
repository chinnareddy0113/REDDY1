trigger obbjecttrigger on object__c (after insert , after update , after delete) {
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate || trigger.isdelete)){
        roolupsummary.rollupmethodtoobjectndstudent(trigger.new, trigger.oldmap);
    }

}