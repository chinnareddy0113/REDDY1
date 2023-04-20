public class collection1 {
    public void example(){
        list <Account> acclist = new list <Account> ();
        set <ID> accIDS = new set <ID> ();
        
        acclist = [select id, name from Account limit 2];
        system.debug('acclist....'+acclist);
        
        for (Account acc : acclist ){
            accIDS.add(acc.id);
            
        }
           system.debug(' only   accids....' +accIDS);   
    }

}