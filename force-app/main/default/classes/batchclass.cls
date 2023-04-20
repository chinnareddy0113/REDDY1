public class batchclass implements Database.batchable<sobject> {
    string queerylocator ='select ID, name from account' ;
    public Database.QueryLocator start (Database.batchablecontext BC){
        return Database.getquerylocator( queerylocator );
        
    }
    public void execute(Database.batchablecontext Bc, List<account> acc){
            for(Account acc1 : acc ){
              if(acc1.Industry =='Agriculture'){
                acc1.description__c = 'the description isupdated to Agriculture';
            }
        }
        
    }
    public void finish(Database.batchablecontext Bc ){
        system.debug('the batch class is completed');
        
    }

}