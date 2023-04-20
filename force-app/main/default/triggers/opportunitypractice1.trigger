trigger opportunitypractice1 on Opportunity (before delete, after update) {
    if(trigger.isbefore && trigger.isdelete ){
        practice1.adminprofilechange(trigger.old);
            }
     if(trigger.isafter && trigger.isupdate ){
        practice1.sendmailtoclosedwon(trigger.new);
            }

}