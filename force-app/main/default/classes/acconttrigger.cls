public class acconttrigger  {
    public static void tocreatechildbyaccount( list <account> lstacc){
        list<contact> lstcon =new list <contact> ();
        for(account acc : lstacc){
            for(integer i=1; i<=5; i++){
                Contact con =new contact ();
                con.LastName =acc.name+i;
                con.Phone=acc.phone;
                con.AccountId= acc.id;
                lstcon.add(con);
            }
           

        }
        insert lstcon;
    }
}