public class accountdelete {
     public static void oppretunityRecord(list<account> acc){
        list<opportunity> opp= new list<opportunity>();
     Opp = [Select accountID from opportunity where accountid in :acc];
	for(Account a : acc){
	for(Opportunity o : Opp){
	if(a.id == o.accountId){
	a.addError('Account have Opportunity ,so you can not delete this Account');
			}
		}
	}
  }  

}