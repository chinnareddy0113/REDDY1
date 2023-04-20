public class accounttriggerhandler {
    
    public static void changeDescriptionfield(list <account> accountlist ){
          for (account accountholder : accountlist){
            if (accountholder.regionname__c !=null){
                accountholder.regionmanger__c=regioninfo__c.getvalues(accountholder.regionname__c).regionmanger__c;
           }
          }
        
    }
   }