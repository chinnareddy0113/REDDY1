public class example4 {
    public static void restrictchildrecord(list <account> acc1){
        integer noofrecords =0;
        list<contact> conlist = new  list<contact> ();
        for (account acc2:acc1){
            if (acc2.city__c =='Anantapur'){
                noofrecords =(integer)acc2.no_of_records__c;
              for(integer i=1; i<= noofrecords; i++){
                contact con = new contact();
                con.Lastname = acc2.Name+i;
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
}