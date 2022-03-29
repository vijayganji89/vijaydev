public class SE_ApexFunctionTest {
    public Contact newCon {get;set;}
    public SE_ApexFunctionTest(ApexPages.StandardController controller) {
        newCon = (Contact)controller.getRecord();
    }
    
    public static String AccLinks { 
    get { 
        //string returnValue = 'some_url';
        if (Acclinks == null) { 
            //Key_Value_List__c kvl = Key_Value_List__c.getInstance('Acc_Content'); 
            AccLinks = ('1' != null && '2' != null ? 'first_url' : 'some_url'); 
        }
        return AccLinks ;  
    } private set;
}

    
    public PageReference createSample(){
        system.debug('inside');
        return null;
    }
    public void createSampleObjRecord(){
        system.debug('newCon.Id====' + newCon.Id);
        Contact currentCon = [Select FirstName, AccountId From Contact Where Id =: newCon.Id];
        system.debug('currentCon====' + currentCon);
        //Insert New record
        //return null;
    }
}