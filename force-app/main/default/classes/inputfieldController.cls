public with sharing class inputfieldController {
    public Organization__c org {get;set;} 
    public inputfieldController(ApexPages.StandardController controller) {
         Organization__c emp = (Organization__c)controller.getRecord();
    }
    
    public void ValueofDDL()
    {
        system.debug('//////////////////////////////////');
        system.debug(org.Organization_Type__c);
    }
}