trigger accountemailcheck on Account (after update , after insert) {
    if(trigger.isafter && (trigger.isinsert|| trigger.isupdate)){
        checkemailinaccount.accountmethod(trigger.new);

}
}