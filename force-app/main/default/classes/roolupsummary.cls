public class roolupsummary {
    public static void rollupmethodtoobjectndstudent(list<object__c> newlist, map<id,object__c> oldmap){
         set<Id> parentidset = new set<Id>();
       //update
           if(oldmap!=null && newList!=null){  
            for(object__c con :newList){
                object__c oldm =oldmap.get(con.id);
                if(oldm!=null){
                    if(con.id==oldm.id && ( con.studentobject__c!=oldm.studentobject__c || con.cost__c != oldm.cost__c )){
                        parentidset.add(oldm.studentobject__c);
                        parentidset.add(con.studentobject__c);
                    } 
                }
            }
            
        }
        if(oldmap==null && newlist!= null) { // this is for insert scenario
            for(object__c con2:newList){
                parentidset.add(con2.studentobject__c);
            }
        }
        if(newList==null && oldmap!=null){ // this is for delete scenario
            for(object__c con3:oldmap.values()){

                 if (con3.studentobject__c !=null){
            parentidset.add(con3.studentobject__c);
}
                  
                
            }
        }
           
           // AggregateResult fetching details using soql and getting aggregate values for min max avg count sum
  list<AggregateResult> AR = [select studentobject__c,Sum(cost__c)amt,Count(id)counter,Min(cost__c)minam,Max(cost__c)maxam ,AVG(cost__c)average
                              from object__c
                              where  studentobject__c IN: parentidset group by studentobject__c];
          
        list<student__c> parentlisttoupdate = new list<student__c>();
           if(!AR.isempty()){
               for(AggregateResult a: AR){
                student__c std = new student__c();
                   std.id=(id)a.get('studentobject__c');
                   std.sum__c=(decimal)a.get('amt');
                   std.count__c=(integer)a.get('counter');
                   std.min__c=(decimal)a.get('minam');
                   std.max__c=(decimal)a.get('maxam');
                   std.avg__c=(decimal)a.get('average');
                   parentlisttoupdate.add(std);
               }
              }
           
           if(!parentlisttoupdate.isempty()){
               
               upsert parentlisttoupdate;
           }
    }
      

}