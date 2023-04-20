public class futruemethod {
    
    
      public static void futuremthodexample(){
        futuremthod1();
          futuremthod2();
          futuremthod3();
          futuremthod4();
          
    }
    public static void futuremthod1 (){
        system.debug('this is future method1');
    }
     public static void futuremthod2 (){
        system.debug('this is future method2');
    }
    @future
     public static void futuremthod3 (){
         futuremthod4();
        system.debug('this is future method3');
    }
    
     public static void futuremthod4 (){
        system.debug('this is future method4');
         
    }
    
    
    
}