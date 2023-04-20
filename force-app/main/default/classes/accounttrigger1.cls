public class accounttrigger1 {
    public static void afterinsert(list <account> acc){
     list <opportunity> opptoinsert = new list<opportunity> ();
        for (account listacc : acc){
            opportunity opp =new opportunity ();
            opp.name = listacc.name;
            opp.AccountId=listacc.Id;
            opptoinsert.add(opp);
            
        }
        if (opptoinsert!= null){
            insert opptoinsert;
        }
        
    }

}