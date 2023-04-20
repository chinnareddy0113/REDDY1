public class customerclass {
    public static void updatedescrption(list<customer__c> cs){
        for(customer__c cd : cs){
            if(cd.EMI_paid__c == 'yes'){
                cd.Descrption__c = 'Thank you';
            }else if (cd.EMI_paid__c == 'no' ){
                cd.Descrption__c = 'Please pay emi with in time';
            }
        }
    }

}