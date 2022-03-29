public with sharing class EmpExtensions {

    public EmpExtensions(ApexPages.StandardController controller) {

    }
    public List<SelectOption> getCountries()
    {
      List<SelectOption> options = new List<SelectOption>();
        
      //Schema.DescribeFieldResult fieldResult =  OfficeLocation__c.Country__c.getDescribe();
      // List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
      // for( Schema.PicklistEntry f : ple)
      // {
      //    options.add(new SelectOption(f.getLabel(), f.getValue()));
      // }       
      options.add(new SelectOption('02/02/2013','02/02/2013'));
      options.add(new SelectOption('02/03/2013','02/03/2013'));
      options.add(new SelectOption('02/04/2013','02/04/2013'));
   return options;
}

}