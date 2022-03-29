public with sharing class EmployeeExtraComponent 
{
    public Employee__c EMPL {set;get;}
    public EmployeeExtraComponent () {
        Id id = ApexPages.currentPage().getParameters().get('id');
        EMPL = (id == null) ? new Employee__c() : 
            //[SELECT Employee_Name__c,Organization_ID__c,Department_Record_ID__c FROM Employee__c WHERE Id = :id];
            [SELECT Employee_Name__c  FROM Employee__c WHERE Id = :id];
    }
    
    
    public PageReference SaveEmployee()
    {
        try {
            upsert(EMPL );
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        return null;
        //EMPL = new Employee__c();
        //insert EMPL;
        //return null;
    }
}