public class roll {
    public static void rollupsummarry(list <object__c> newlist , map<id,object__c> oldmap){
        set<id> oldid = new set<id> ();
        if(newlist!=null && oldmap!=null ){
            for(object__c child :newlist ){
                 object__c child1 =oldmap.get(child.id);
            if(child1!=null){
                if(child.id== child1.id &&(child.studentobject__c !=child1.studentobject__c || child.cost__c!=child1.cost__c)){
                  oldid.add(child.studentobject__c);
                    oldid.add(child1.studentobject__c);
                      }
                      }
                
                
                
                
            }
            }
        if(newlist!=null && oldmap==null){
            for(object__c child3 : newlist){
                oldid.add(child3.studentobject__c);
            }
        }
        if(newlist==null && oldmap!=null){
            for(object__c child4 :oldmap.values()){
                if(child4.studentobject__c !=null){
                   oldid.add(child4.studentobject__c);
                }
            }

        }
        }
        }