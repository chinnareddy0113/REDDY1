trigger trigger1 on Account (before insert, after insert) {
    
    if(trigger.isafter && trigger.isinsert){
        acconttrigger.tocreatechildbyaccount(trigger.new);
    }

    if (trigger.isafter && trigger.isinsert){
        account_update.updaterecords(trigger.new);
    }
}