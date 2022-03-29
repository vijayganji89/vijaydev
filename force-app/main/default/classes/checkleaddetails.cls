@isTest 
public with sharing class checkleaddetails { 
    public static testMethod void checkleadinfo () { 
        Account c = new Account();
        {    
            //RecordType personAccountRecordTypeId = [select developerName from RecordType where IsPersonType=True  And DeveloperName = 'personAccount'];
            //c.RecordtypeId = personAccountRecordTypeId.Id;
            c.Phone='9743800309';
            c.Name='Jitesh';
            c.AccountNumber = '1234';
            insert c;
        }
        
        Lead leadobj=new Lead(
            FirstName='test',
            LastName = c.id,        
            MobilePhone = '1231244', 
            Company = c.id,
            Email= 'test@test.com');
        insert leadobj ;
        
        
        
        Test.StartTest(); 
        Id [] fixedSearchResults= new Id[2];
        fixedSearchResults[0] = leadobj.Id;
        fixedSearchResults[1] = c.Id;
        Test.setFixedSearchResults(fixedSearchResults);
        
        LeadHandlerClass.LeadDuplicateCheck(leadobj.MobilePhone);    
        LeadHandlerClass.LeadDuplicateCheck(leadobj.Email);
        LeadHandlerClass.LeadDuplicateCheck(leadobj.FirstName);
        Test.StopTest();
    }       
}