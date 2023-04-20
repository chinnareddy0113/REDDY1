public class accountexample1 {
    public static void makemandataryfieldstatus(list<account> acc1 ){
        system.debug('acc1---->'+acc1);
        for(account acc2 :acc1){
            if(acc2.status__c ==null || acc2.status__c == ''){
                acc2.adderror('please select any value');
            }
        }
    }
    public static void defaultdescription(list<account> acc1){
        for(account acc2 :acc1)
        {
            if(acc2.Description==null){
                acc2.Description='please enter any description';
                
            }
        }
    }
    public static void defaultstatus(list<account> acc){
        for(account acc1 : acc){
            if(acc1.status__c ==null){
                acc1.status__c ='created';
            }
        }
        
    }
    public static void changedescrption(list<account> acc1){
        for (account acc2 : acc1){
            if (acc2.status__c != null && acc2.status__c =='created'){
                acc2.Description='the account is created';
                
            }else if(acc2.status__c != null && acc2.status__c =='closed'){
                acc2.Description='the accounnt is closed';
            } 
            
                
        }
    }
    
    public static void accounttocontact(list<account> acc1){
       
        
        list <contact> conlist = new list <contact> ();
      
        for (account acc2 : acc1){
            contact con = new contact();
            con.LastName =acc2.Name;
            con.FirstName=acc2.Name;
            con.Phone=acc2.Phone;
            con.AccountId=acc2.Id;
            conlist.add(con);
                
        }
        if( !conlist.isempty()){
            insert conlist;
            
        }
        
    
}
    public static void accounttocontactupdated(list<account> acc1){
         list <contact> conlist = new list <contact> ();
         list <id> idlist = new list <id> ();
        for (account acc2 : acc1){
            if(acc2.status__c=='Created'){
            contact con = new contact();
            con.AccountId=acc2.Id;
            con.LastName=acc2.Name;
            conlist.add(con);
            }else if(acc2.status__c=='Closed'){
            contact con = new contact();
            con.AccountId=acc2.Id;
            con.LastName=acc2.Name;
            conlist.add(con);          
            }
        if( !conlist.isempty()){
            insert conlist;
            
        }
    }
    }
    public static void restrictchildrecord(list <account> acc1){
        integer noofrecords =0;
        list<contact> conlist = new  list<contact> ();
        for (account acc2:acc1){
            if (acc2.city__c =='Anantapur'){
                noofrecords =(integer)acc2.no_of_records__c;
              for(integer i=1; i<= noofrecords; i++){
                contact con = new contact();
                con.Lastname = acc2.Name;
                con.MobilePhone = acc2.Phone;
                con.AccountId = acc2.Id;
                conList.add(con);
              }
            
        } 
            if(!conlist.isempty()){
                insert conlist;
    }
        }
    }
    public static void througherrorinaccount(list <account> acc1){
        list<contact> conlist = new  list<contact> ();
        for (account acc2:acc1){
            if (acc2.AnnualRevenue>1000){
                acc2.adderror('please give lessthan 1000 in annual revenue');
                
            }else if(acc2.AnnualRevenue<1000){
                contact con = new contact();
            con.AccountId=acc2.Id;
            con.LastName=acc2.Name;
            con.Phone=acc2.Phone;
            conlist.add(con);
            }
            if(!conlist.isempty()){
                insert conlist;
            }
            

        }
    }
    public static void countthechildreccords(list<object__c> newlist, map<id,object__c> oldmaap){
        set<Id> parentidset = new set<Id>();
       //update
           if(oldmaap!=null && newList!=null){  
            for(object__c con :newList){
                object__c oldm =oldmaap.get(con.id);
                if(oldm!=null){
                    if(con.id==oldm.id && ( con.studentobject__c!=oldm.studentobject__c || con.cost__c != oldm.cost__c )){
                        parentidset.add(oldm.studentobject__c);
                        parentidset.add(con.studentobject__c);
                    } 
                }
            }
            
        }
        if(oldmaap==null && newlist!= null) { // this is for insert scenario
            for(object__c con2:newList){
                parentidset.add(con2.studentobject__c);
            }
        }
        if(newList==null && oldmaap!=null){ // this is for delete scenario
            for(object__c con3:oldmaap.values()){

                 if (con3.studentobject__c !=null){
            parentidset.add(con3.studentobject__c);
}
                  
                
            }
        }
           
           // AggregateResult fetching details using soql and getting aggregate values for min max avg count sum
  list<AggregateResult> AR = [select studentobject__c,Sum(cost__c)amt,Count(id)counter,Min(cost__c)minam,Max(cost__c)maxam 
                              from object__c
                              where studentobject__c IN: parentidset group by studentobject__c];
          
        list<student__c> parentlisttoupdate = new list<student__c>();
           if(!AR.isempty()){
               for(AggregateResult a: AR){
                student__c std = new student__c();
                   std.id=(id)a.get('student__c');
                   std.sum__c=(decimal)a.get('amt');
                   std.count__c=(integer)a.get('counter');
                   std.min__c=(decimal)a.get('mam');
                   std.max__c=(decimal)a.get('minam');
                   parentlisttoupdate.add(std);
               }
              }
           
           if(!parentlisttoupdate.isempty()){
               
               upsert parentlisttoupdate;
           }
       }
    public static void parentto2childobj(list <account> acc1){
           list <contact> conlist = new list <contact> ();
        list<Opportunity> opplist = new list<Opportunity>();
        for(account acc2 :acc1){
            if (acc2.AnnualRevenue<100){
            contact con = new contact();
            con.AccountId=acc2.Id;
            con.LastName=acc2.Name;
            conlist.add(con);
                
            }else if(acc2.AnnualRevenue>100){
                Opportunity opp =new Opportunity();
                opp.name = acc2.Name;
                opp.AccountId=acc2.Id;
                opp.StageName='Prospecting';
                opp.CloseDate=system.today();
                opplist.add(opp);
            }
            if(!conlist.isempty()){
                insert conlist;
                
            }
            if(!opplist.isempty()){
                insert opplist;
            
        }
       
        }
        
    }
    public static void afterupdate(list <account> acc1){
        set<id> newid =new set <id>();
        for (account acc2 :acc1){
            newid.add(acc2.id);
        }
        list <contact> con =[select id, Account.status__c from contact where accountid IN : newid ];
        if(con.size()>0){
            for(contact conn : con){
                if(conn.Account.status__c =='created'){
                    conn.Description='account is created';
                    
                }
                else {
                    conn.Description='account is closeed';
                }
            }
        }
    }
}