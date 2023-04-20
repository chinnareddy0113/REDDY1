trigger customertriggers on customer__c (before insert) {
    if(trigger.isbefore && trigger.isinsert){
        customerclass.updatedescrption(trigger.new);
    }

}