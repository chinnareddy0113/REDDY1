public class PassByvalueNdReference {
    public void passByValue(){
       string batchname = 'develperbatch';
        system.debug('checkeing the before the pass by value==='+batchname);
         passByValueCall(batchname);
        system.debug('updated code=== '+batchname);
    }
    public void passByValueCall(string batchname){
        batchname = 'development updated batch';
       system.debug('checking after updated===='+batchname); 
        
      
    }
    
    public void passByReference(){
        account acc = new account();
        acc.Name='apex batch';
        system.debug('reference checing===' +acc.Name);
        passByRefernceCall(acc);
        system.debug('before testing==='+acc.Name);
    }
    
    public void passByRefernceCall(account acc ){
         acc.Name = 'tested apex batch';
        system.debug('updatedcode ====='+acc.Name);
    }
    
    
    
}