@isTest
public class AddPrimaryContactTest{
    
    @testSetup
    static void setup(){
        List<Account> accounts = new List<Account>();
        for(integer i=0;i<50;i++){
            accounts.add(new Account(name='Test Account'+i, BillingState = 'NY'));
            accounts.add(new Account(name='Test Account'+i, BillingState = 'CA'));
        }
        insert accounts;
        
        Contact cont = new Contact();
        cont.AccountId = accounts[0].Id;
        cont.LastName ='Test Contact';
        insert cont;
    }
    
    private static testMethod void testQueueable(){
        Contact cont = [select id,LastName from Contact where LastName='Test Contact' LIMIT 1];
        AddPrimaryContact primaryContact = new AddPrimaryContact(cont , 'CA');
        
        Test.startTest();        
        System.enqueueJob(primaryContact);
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        List<Account> accounts =  [select Id, (select id from Contacts) from account where BillingState = 'CA'];
        System.assertEquals(1, accounts[0].contacts.size());
    }
}