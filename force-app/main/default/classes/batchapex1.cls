Global class batchapex1 implements Database.Batchable<sobject> {
    
    string querryresult ='select id,name from account where name = \'chinna\'';
    Global Database.QueryLocator start(database.Batchablecontext bc){
         return Database.getQueryLocator(querryresult);
    }
    global void execute (database.Batchablecontext bc, list<account> acc){
        list <account> lstobj =new list <account> ();
        for (account newacc : acc){
            newacc.phone='8877665544';
            lstobj.add(newacc);
            
        }
        update lstobj;
        
            }
    global void finish (Database.batchablecontext bc){
        
    }
    
    
    

}