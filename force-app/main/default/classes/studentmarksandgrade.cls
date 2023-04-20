public class studentmarksandgrade {
    public static void studentmarksandgrade(list <students__c> stdlist){
        for (students__c std1 : stdlist){
            if (std1.marks__c >= 0 && std1.marks__c <=25){
                std1.grade__c='F';
            }else if (std1.marks__c >= 26 && std1.marks__c <=50){
                std1.grade__c='C';
        }else if  (std1.marks__c >= 51 && std1.marks__c <=75){
            std1.grade__c='B';
        }else if  (std1.marks__c >= 76 && std1.marks__c <=100){
                std1.grade__c='A';
        }
    }

}
 
}