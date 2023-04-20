public class emailprogramming {
    public static void emailmethd(string accountname , string deletedby){
        list <string> lststr = new list <string> {'chinnu.chinnu9988@gmail.com','chinnareddyn0113@gamil.com'};
            list <string> ccadress = new list <string> {'chinnareddynandyala0113@gmail.com'};
                string HTML = 'hi,<br/> this is the msg ';
        
        messaging.SingleEmailMessage singleemail = new messaging.SingleEmailMessage();
        singleemail.setToAddresses(lststr);
        singleemail.setCcAddresses(ccadress);
        singleemail.setSubject('this is tesing msg from apex batch');
        singleemail.setHtmlBody(HTML);
        singleemail.setReplyTo('chinnu.chinnu9988@gmail.com');
        singleemail.setSenderDisplayName('sfdc batch');
        messaging.SendEmailResult [] result = messaging.sendEmail(new messaging.SingleEmailMessage []{singleemail});
        
        
        
    }

}