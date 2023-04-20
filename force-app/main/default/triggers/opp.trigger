trigger opp on Opportunity ( after update) {
    if(trigger.isafter &&  trigger.isupdate){
        opppurtunity.opptoaccount(trigger.new);
    }

}