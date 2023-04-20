public class opportunityexample {
    public static void opptoaccount(list<Opportunity> opp){
        set<id> newid =new set<id>();
        list <account> accd = new list<account>();
        for (Opportunity opp1 :opp){
            newid.add(opp1.accountid);
         for(Account acc : [SELECT Id,rating from Account Where Id IN : newid]){
             
               if(opp1.StageName =='Closed Won'){
                acc.Rating= 'hot';
                   accd.add(acc);
                   
              if(!accd.isEmpty()){
                  update accd;
              }
         
            
        }
        
       
            }
        }
    }
}