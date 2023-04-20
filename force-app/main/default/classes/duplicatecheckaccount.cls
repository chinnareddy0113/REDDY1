public class duplicatecheckaccount {
 public static void duplicateacc(list<Account> acclist){
        for(account acc: acclist){
            integer recordscount = [select count() from account
                                   where name =: acc.name];
            if(recordscount > 0)
                acc.adderror('you are not allowed to create new record with same name');
        }
 
   
 }

}