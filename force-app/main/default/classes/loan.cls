public class loan {
     public static void opptoaccount(list<loan__c> opp, map<id,loan__c> oldmap){
         list<id> lnlist = new list<id>();
        for(loan__c ln : opp){ // for update
            loan__c lnold = oldmap.get(ln.Id);
           
            if((ln.Name != lnold.Name) || (ln.emi_date__c != lnold.emi_date__c )){
                lnlist.add(ln.customer__c);
            }
        }
        if(!lnlist.isempty()){
             map<id, customer__c> cuslist = new map<id, customer__c>([SELECT id, name, 	Date_of_next_EMI__c from 	customer__c
                                                                  where ID in : lnlist]);
            {
                if(!cuslist.isempty()){
                    list<customer__c> lstcus = new list<customer__c>();
                    for(loan__c ln : opp){
                        customer__c cusrec = cuslist.get(ln.customer__c);
                       
                        cusrec.Name = ln.Name;
                        cusrec.Id = ln.customer__c;
                        cusrec.Date_of_next_EMI__c = ln.emi_date__c.addmonths(1);
                        lstcus.add(cusrec);
                    }
                    if(!lstcus.isempty()){
                        update lstcus;
                    }
                }
            }
        }
       
    }
    public static void LoanMethod(list<Loan__c> newlist){
         set<id> sids=new set<id>();
        for(Loan__c lc:newlist){
           sids.add(lc.customer__c);
        }
          list<customer__c> sl = [select id ,EMI_per_month_amount__c from customer__c where id IN : sids ];
        for(customer__c cc:sl){
            double A=cc.EMI_per_month_amount__c;
            for(Loan__c aa:newlist){
                double P=aa.loan_amount__c;
                string s=aa.loan_intrest__c;
                double R = double.valueof(s);
                string Q=aa.loan_duration__c;
                double N = double.valueOf(Q);
                
               cc.EMI_per_month_amount__c = (P*(R/100)/12*Math.pow(1+(R/100)/12,N))/(Math.pow(1+(R/100)/12,N)-1);
               cc.Date_of_next_EMI__c = aa.emi_date__c.addmonths(1);
                 }
        }
        update sl;
        
    }
    public static void loanupdate(list<Loan__c> loann){
        set<id> newid= new set<id> ();
        list <customer__c> css = new  list <customer__c>();
        for(Loan__c lc :loann){
            newid.add(lc.customer__c);
        }
        list <customer__c> cus =[select id,phone__c from customer__c where id in :newid];
        for (customer__c cos : cus){
            for(Loan__c aa:loann){
                cos.phone__c=aa.phone__c;
                css.add(cos);
                
            }
            if(!css.isempty()){
              update cos;  
            }
        }
    }
 }