public class TestCustomSeetings {
    public FirstCustomSetting__c  CustomSetting {get;set;}
    
    public TestCustomSeetings () {
        CustomSetting  = FirstCustomSetting__c.getValues('1');
    }
}