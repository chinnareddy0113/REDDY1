public class queueable2 implements Queueable {
    public void execute (Queueablecontext qc){
        system.debug('this is method 2');
        queueable3 qc3 = new queueable3 ();
        system.enqueueJob(qc3);
    }

}