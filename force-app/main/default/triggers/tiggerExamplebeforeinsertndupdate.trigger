trigger tiggerExamplebeforeinsertndupdate on Account (before insert , before update , after insert ) {
   accounttriggerhandler.changeDescriptionfield(trigger.new);
    if (trigger.isbefore && (trigger.isInsert || trigger.isupdate )){
    if (trigger.isafter && trigger.isinsert ){
       
         }
    }
}