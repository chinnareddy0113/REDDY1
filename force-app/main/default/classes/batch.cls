Global class batch implements database.Batchable<sobject> { 
    string queryresult = 'select id , name from account where name =\'chinna\'';
        
        Global database.querylocator start (Database.BatchableContext bc){
            return Database.getquerylocator(queryresult);
            
        }
    global void execute (Database.BatchableContext bc , list <account> acc){
        list <account> acc1 = new list <account>();
        for (account acc2 :acc){
            acc2.phone='5566778899';
            acc1.add(acc2);
        }
        update acc1;
    }
    Global void finish (Database.BatchableContext bc ){
}

}