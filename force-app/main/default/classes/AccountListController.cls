public with sharing class AccountListController {
    @AuraEnabled
    public static List<Account> getrecords() {
        List<Account> result =
            [SELECT Id, Name FROM Account LIMIT 5];
        return result;
    }
    /*
    @AuraEnabled
    public static List<Broker_License__c> deleteQuotes(String deleteIds) {
    list<String> idList = deleteIds.split(';');
    list<Broker_License__c> result =
    [SELECT Id FROM Broker_License__c where id in :idList];
    System.debug('***result'+result);
    delete result;
    
    List<Broker_License__c> result2 =
    [SELECT Id, Name,Account__r.Name,Broker_Application__r.Name,Contact__r.name,License_End_Date__c,
    License_Number__c, License_Start_Date__c, National_Producer_Number__c, Original_License_Issue_Date__c,
    User__r.name FROM Broker_License__c LIMIT 5];
    return result2;
    }
    */
}