trigger countrrytextfieldUpdate on countryy__c (after insert,after update) {
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate)){
        countriestextfieldUpdate.selectcountry(trigger.new, trigger.oldmap);
    }
}