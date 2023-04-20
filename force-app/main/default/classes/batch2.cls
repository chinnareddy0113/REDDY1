Global class batch2 implements Database.Batchable<sobject>{
    
    string querryresult = 'select id, name from account where name =\'rahul\'';
    Global Database.querylocator start (database.batchablecontext ba ){
        return Database.getQueryLocator(querryresult);  
            }
    
     Global void execute (Database.BatchableContext ba , list <account> acc){
            list <account>acc1 = new list <account> ();
            for(account acc2 :acc ){
                acc2.phone='1122334455';
                acc1.add(acc2);
                
        }
         update acc1;
    }

    Global void finish (database.BatchableContext ba){
        system.debug('okay');
    }
}