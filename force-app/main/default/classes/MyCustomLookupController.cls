public with sharing class MyCustomLookupController {
 
  public Contact contact {get;set;}
  public Organization__c Organization {get;set;}
 
  public MyCustomLookupController() {
    //contact = new Contact();
    Organization= new Organization__c();
    contact = new Contact();
  }
  
  public PageReference checkValue(){
      system.debug('contact =====' + contact);
      return null;
  }
 
}