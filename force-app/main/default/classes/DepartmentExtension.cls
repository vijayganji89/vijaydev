public with sharing class DepartmentExtension {
    private ApexPages.StandardController controller {get;set;}
    public Department__c department {get;set;}
    public boolean hasErrorMessages {get;set;}
    
    public DepartmentExtension(ApexPages.StandardController controller) {
        this.controller = controller;
        this.department = (Department__c) controller.getRecord();
        hasErrorMessages =false;

    }
    
    public PageReference saveDepartment(){
        PageReference pg;//= new PageReference();
        pg= controller.save();
        if(pg==null){
            //ApexPages.getMessages().clear();
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.error,'Test Message'));
            
        }
        if(ApexPages.hasMessages()){
            hasErrorMessages = true;
        } else {
            hasErrorMessages = false;
        }
        
        system.debug('uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
        system.debug(ApexPages.getMessages());
        //ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.error,'Test Message2'));
        return null;
    }

}