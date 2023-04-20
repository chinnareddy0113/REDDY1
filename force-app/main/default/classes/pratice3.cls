public class pratice3 {
    public static void opprtinityAccount(list<account> a){
        account acc =new account();
        Set<Id> accountIds = new Set<Id>();
        for(Account ab:a){
            accountIds.add(ab.Id);
        }
        //day30 is the date which is 30 days less than today
        DateTime day30=system.now()-30;
        List<Opportunity> oppListToUpdate=new List<Opportunity>();
        //getting the opportunities whose account has been updated
        List<Opportunity> oppList = [Select Id, AccountId, StageName, CreatedDate, CloseDate from Opportunity where AccountId in :accountIds];
        if(oppList.size()>0){
            for(Opportunity opp : oppList){
                //checking for condition if created date is greater than 30 days from today and stage not equal to close won
                if(opp.CreatedDate<day30 && opp.StageName!='Closed Won'){
                    opp.StageName='Closed Lost'; //This is a mandatory field when we update the CloseDate
                   // opp.StageName='Closed Lost';    
                    opp.CloseDate=system.today();
                    oppListToUpdate.add(opp);   //putting the changed opportunity to separate list to update later
                  //  oppListToUpdate.add(opp); 
                }
            }
        }
        //checking if the opportunity list which has changed is having records or not
        if(oppListToUpdate.size()>0){
            update oppListToUpdate;
        }
    }

}