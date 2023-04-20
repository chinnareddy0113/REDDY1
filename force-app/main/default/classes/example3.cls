public class example3 {
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

}