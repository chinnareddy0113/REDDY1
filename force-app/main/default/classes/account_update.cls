public class account_update {
    public static void updaterecords (list <account> acclist){
        for (account acoountrecord : acclist){

            if(acoountrecord.Industry =='Banking'){
                acoountrecord.AnnualRevenue = 9988;
            }
        }

        
    }

}