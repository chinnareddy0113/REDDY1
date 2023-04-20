public class school {
    public static void phoneFieldUpdate(list<school__c> sch, Map<id,school__c> oldmap){
        set<id> newid= new set<id> ();
        list <college__c> clg =new list <college__c> ();
        for(school__c scc:sch){
            newid.add(scc.college__c);}
          /*  
           for(school__c scc1:sch){
               school__c scc2 = oldmap.get(scc1.id);
               if((ln.Name != lnold.Name) || (ln.emi_date__c != lnold.emi_date__c )){
                newid.add(scc1.college__c);
                   newid.add(scc2.college__c);  }}*/
            list<college__c> cllg=[select id, phone__c from college__c where ID in :newid];
            for(college__c colg:cllg){
                for(school__c sc:sch){
                    colg.phone__c=sc.phone__c;
                    clg.add(colg);
                
            }
        }
        if(!clg.isempty()){
            update clg;
        }
        
        
    }

}