public class countriestextfieldUpdate {
   
    Public static void selectcountry(list<countryy__c> lststd, Map<id,countryy__c> oldmap)
    { 
    Set<Id> parentIds = new Set<Id>();   
    for (countryy__c childObj : lststd) {
        if (childObj.countrylookup__c != null) {
            parentIds.add(childObj.countrylookup__c);
   
        }
    }
         if (!parentIds.isEmpty()) {

	Map<Id, country__c> parentsToUpdate = new Map<Id, country__c>();

    for (country__c parent : [SELECT Id, satatus__c FROM country__c WHERE Id IN :parentIds]) {
        parentsToUpdate.put(parent.Id, parent);
    }

    for (countryy__c child : lststd) {
        if (child.countrylookup__c != null) {
            country__c parent = parentsToUpdate.get(child.countrylookup__c);
            if (parent != null) {
                if (parent.satatus__c == null || parent.satatus__c == child.countries__c) {
                    parent.satatus__c = child.countries__c;
                    parentsToUpdate.put(parent.Id, parent);
                } else {
                    parent.satatus__c = null;
                    parentsToUpdate.put(parent.Id, parent);
                }
            }
        }
    }

    update parentsToUpdate.values();
     }
    } 

}