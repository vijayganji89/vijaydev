public class LeadHandlerClass {
    public static Boolean LeadDuplicateCheck(String contactInfo){
        String searchQuery= 'FIND \'' + contactInfo.trim() + '*\' IN ALL FIELDS RETURNING Lead(Id,MobilePhone,Email), Account(Id,Phone,AccountNumber)';
        List<List <sObject>> searchList= search.query(searchQuery);
        Lead [] leads= ((List<Lead>)searchList[0]);
        Account [] accounts = ((List<Account>)searchList[1]);
        system.debug('searchQuery == '+ searchQuery);
        system.debug('searchList == ' + searchList);
        
        if(leads.size()>0) 
        { 
            /* this line is not covered */
            for(Lead lead:leads ){
                if((lead.MobilePhone!=null && contactInfo.contains(lead.MobilePhone))|| (lead.Email!=null && contactInfo.contains(lead.Email)))
                    return true; //duplicate return true
            }
            /* this line is not covered */
            
        }
        if(accounts.size()>0) 
        {     /* this line is not covered */
            for(Account account:accounts ){
                if((account.Phone!=null && contactInfo.contains(account.Phone))
                   ||(account.AccountNumber!=null && contactInfo.contains(account.AccountNumber)))
                    return true; //duplicate return true
            }  /* this line is not covered */
            
        }
        
        return false;
        
    }
    
}