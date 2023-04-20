public class scchduelclass  implements schedulable{
    public void execute (schedulablecontext ca){
        system.debug('thiiiis');
        batch3 b3 = new batch3 ();
        database.executeBatch(b3);
        
    }
}