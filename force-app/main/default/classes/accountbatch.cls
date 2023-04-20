Global class accountbatch implements Database.Batchable<Sobject>  {
    string accountquery = 'select Id, name from account where name =\'trigger3\'';
    Global Database.QueryLocator start(Database.BatchableContext bc ){
        return Database.getQueryLocator(accountquery);
        
    }
    Global void Execute(Database.BatchableContext bc, list<Account> lstobj ){
      list <account> accountupdate = new list <account> ();
        for (Account acc : lstobj ){
            acc.phone = '996688794';
            accountupdate.add(acc);
            
        }
        update accountupdate;
    }
    Global void Finish (Database.BatchableContext bc ){
        
    }

}