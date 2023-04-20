trigger accountduplicatecheck on Account (before insert , before update) {
    if((trigger.isinsert || trigger.isupdate ) && trigger.isbefore){
        duplicatecheckaccount.duplicateacc(trigger.new);
    }

}