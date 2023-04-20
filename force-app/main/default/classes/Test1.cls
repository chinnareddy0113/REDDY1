@isTest
public class Test1 {
    @isTest
    public static void test(){
        example1 e = new example1();
        e.invoke();
        system.assertEquals('chinna',e.name);
        system.assertEquals('hyd', e.city);
        e.invoke2();
        system.assertEquals('reddy', e.name);
    }
}