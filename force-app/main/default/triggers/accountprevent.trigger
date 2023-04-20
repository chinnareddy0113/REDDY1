trigger accountprevent on Account (before delete) {
    if(trigger.isbefore && trigger.isdelete){
        accountdelete.oppretunityRecord(trigger.old);
    }

}