public class queueble  implements Queueable{
    
    public void execute(QueueableContext qc){
        system.debug('this is queueable method1');
        system.enqueueJob(new queueable2());
    }

}