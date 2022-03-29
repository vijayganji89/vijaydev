global class SE_MyController
{
    public Boolean sysDarkSite {get; set;}
    
    public SE_MyController(ApexPages.StandardSetController standardSetController)
    {
    }
    
    public PageReference updateRecord()
    {
        Boolean boolDarkSite = sysDarkSite;
        system.debug('boolDarkSite :' +boolDarkSite );
        //List<Custom_Obj__C> oCusObj = [Select Id, NEX_Dark_Site__c from 
        //                               Custom_Obj__C];
        //oCusObj[0].NEX_Dark_Site__c = sysDarkSite;
        //system.debug('oCusObj [0].NEX_Dark_Site__c:'+oCusObj [0].NEX_Dark_Site__c);
        //update oCusObj;
        return null;
    }
}