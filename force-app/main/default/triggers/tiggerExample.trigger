trigger tiggerExample on Account (before insert, before update) {
    for (Account accountRecord : trigger.new){
        if(accountRecord.Industry =='Banking'){
             accountRecord.Description = ' just now created';
            accountRecord.AnnualRevenue= 9877;
            
        }
    }

}