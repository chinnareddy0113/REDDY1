trigger Accounttrigger1 on Account (after insert ,after update ) {
  /*  if (trigger.isinsert && trigger.isbefore){
        accountexample1.defaultstatus(trigger.new);
    }

    if (trigger.isbefore && (trigger.isinsert || trigger.isupdate) ){
        accountexample1.changedescrption(trigger.new);
    }
    
    if ((trigger.isinsert || trigger.isupdate) && trigger.isbefore){
       accountexample1.makemandataryfieldstatus(trigger.new);
    }
 
    if ((trigger.isinsert || trigger.isupdate) && trigger.isbefore){
        accountexample1.defaultdescription(trigger.new);
    }
    */
    /*if ((trigger.isinsert || trigger.isupdate) &&  trigger.isafter){
        accountexample1.countthechildreccords(trigger.new ,trigger.oldmap);
    }*/
}