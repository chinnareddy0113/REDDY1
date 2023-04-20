public class checkemailinaccount {
    public static void  accountmethod(list<account> acclist){
		set<id> pid = new set<id>();
        for(account acc: acclist){
            pid.add(acc.id);
        }
        list<contact> cRec = [select AccountId,Email from Contact];
        
            for(contact con : cRec){
                for(account acccc:acclist){
                if(con.Email == acccc.email__c){
                    acccc.addError('Email is already Exist');
                }
                
            }
        }
    }   

}