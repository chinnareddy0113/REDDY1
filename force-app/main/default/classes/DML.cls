public class DML {
    public void UNdeletemethod (){
      
       account acc = [select name from account where name = 'kranthoi' ALL ROWS ];
        UNdelete acc ;
    }
}