public class asynchronousqueueable implements Queueable {
    public void execute(Queueablecontext qc){
        system.debug('this is first example');
        
        asynchronousqueueable2 asy2 = new asynchronousqueueable2();
        system.enqueuejob(asy2);
    }

}