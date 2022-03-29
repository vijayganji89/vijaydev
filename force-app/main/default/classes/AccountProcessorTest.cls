@isTest
public class AccountProcessorTest{
    
    public static testMethod void countContacts_test(){
        
        Account acc = new Account();
        acc.Name ='Test Account';
        insert acc;
        
        Contact cont = new Contact();
        cont.LastName = 'Test Contact';
        cont.AccountId = acc.Id;
        insert cont;
        
        Test.startTest();
        AccountProcessor.countContacts(new List<Id>{acc.Id});
        Test.stopTest();
        
        Account account = [select id, Number_of_Contacts__c from Account where Id=:acc.Id];
        system.assertEquals(account.Number_of_Contacts__c, 1);
    }

}