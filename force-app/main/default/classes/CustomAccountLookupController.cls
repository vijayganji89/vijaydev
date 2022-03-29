public with sharing class CustomAccountLookupController {
 
  public Account account {get;set;} // new account to create
  //public List<Account> results{get;set;} // search results
  public List<sObject> results{get;set;} // search results
  public string searchString{get;set;} // search keyword
  public string ObjectName {get;set;}
  public string Fieldtosearch {get;set;}
  public string Fieldtoshow{get;set;}
  public string Fieldtoshow1{get;set;}
  public string Fieldtoshow2{get;set;}
  public string Fieldtoshow3{get;set;}
 
  public CustomAccountLookupController() {
    account = new Account();
    // get the current search string
    searchString = System.currentPageReference().getParameters().get('lksrch');
    ObjectName = System.currentPageReference().getParameters().get('obj');
    Fieldtosearch = System.currentPageReference().getParameters().get('fld');
    Fieldtoshow1= System.currentPageReference().getParameters().get('fldshow1');
    Fieldtoshow2= System.currentPageReference().getParameters().get('fldshow2');
    Fieldtoshow3= System.currentPageReference().getParameters().get('fldshow3');
    runSearch();  
  }
 
  // performs the keyword search
  public PageReference search() {
    runSearch();
    return null;
  }
 
  // prepare the query and issue the search command
  private void runSearch() {
    // TODO prepare query string for complex serarches & prevent injections
    results = performSearch(searchString);               
  } 
 
  // run the search and return the records found.  
  //private List<Account> performSearch(string searchString) {
  private List<Employee__c> performSearch(string searchString) {
 
    //String soql = 'select id, name from account';
    //String soql = 'select id, Department_Name__c ,name from Department__c';
    String soql ='';
    System.debug('ObjectName='+ObjectName);
    if(ObjectName!='' && ObjectName!=null && Fieldtosearch !='' && Fieldtosearch !=null && Fieldtoshow1 !='' && Fieldtoshow1 !=null && Fieldtoshow2 !='' && Fieldtoshow2 !=null && Fieldtoshow3 !='' && Fieldtoshow3 !=null)
    {
        //soql ='select id, name, '+ Fieldtosearch1+','Fieldtoshow1 +','+Fieldtoshow2 +','+Fieldtoshow3 + ' from ' + ObjectName;
        soql ='select id, name, '+ Fieldtosearch +','+ Fieldtoshow1 +','+Fieldtoshow2 +','+Fieldtoshow3 + ' from ' + ObjectName;
        if(searchString != '' && searchString != null && Fieldtosearch !='' && Fieldtosearch !=null)
           soql = soql +  ' where '+ Fieldtosearch + '  LIKE \'%' + searchString +'%\'';
          //soql = soql +  ' where name LIKE \'%' + searchString +'%\'';
        soql = soql + ' limit 25';
        System.debug(soql);
        return database.query(soql); 
    }
    return null;
    
 
  }
 
  // save the new account record
  public PageReference saveAccount() {
    insert account;
    // reset the account
    account = new Account();
    return null;
  }
 
  // used by the visualforce page to send the link to the right dom element
  public string getFormTag() {
    return System.currentPageReference().getParameters().get('frm');
  }
  
  public string getFieldsToShowTag() {
    return System.currentPageReference().getParameters().get('fldshow');
  }
  
  // used by the visualforce page to send the link to the right dom element for the text box
  public string getTextBox() {
    return System.currentPageReference().getParameters().get('txt');
  }
 
}