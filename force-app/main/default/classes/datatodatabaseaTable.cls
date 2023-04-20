public  class datatodatabaseaTable {

    @AuraEnabled(cacheable=true)
    public static list <Account> method1(){
        list <Account> acclist =[select id,name, website, Tradestyle from Account limit 10  ];
        return acclist;
    }
}