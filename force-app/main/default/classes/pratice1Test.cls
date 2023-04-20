@isTest
public class pratice1Test {
    @testSetUp
    static void testAdminprofilechange() {
        // Create a test user with System Administrator profile
        Profile adminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
        User testUser = new User();
            testUser.ProfileId = adminProfile.Id;
            testUser.Username ='user113@example.com';
            testUser.FirstName = 'Test';
            testUser.LastName = 'User';
            testUser.Email = 'user@example.com';
           testUser.Alias = 'tuser2';
            testUser.TimeZoneSidKey = 'America/Los_Angeles';
            testUser.LocaleSidKey = 'en_US';
            testUser.EmailEncodingKey = 'UTF-8';
            testUser.LanguageLocaleKey = 'en_US';
            insert testUser;
        
        // Create a Closed Won opportunity
        Opportunity testOpp = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Closed Won',
            CloseDate = Date.today(),
            OwnerId = testUser.Id
        );
       
        insert testOpp;
       // Create an account and two users as account and opportunity owners
        Account testAccount = new Account(
            Name = 'Test Account'
        );
        insert testAccount;
        
    }
    
    @isTest
    public static void testSendmailtoclosedwon() {
        
       
        // Call the sendmailtoclosedwon method with a list of opportunities including the test opportunity
       

        List<Opportunity> opplist=[select id, name, StageName, CloseDate,OwnerId ,Account.OwnerId, Owner.Email, Account.Owner.Email from Opportunity  ];
        // Call the adminprofilechange method with a list of opportunities including the test opportunity
        practice1.adminprofilechange(opplist);
         practice1.sendmailtoclosedwon(opplist);
}
}