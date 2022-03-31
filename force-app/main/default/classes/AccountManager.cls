@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        //creating feature6 branch
        RestRequest request = RestContext.request;
        // grab the accountId from the end of the URL
        //String accountId = request.requestURI.substring(
        //    request.requestURI.lastIndexOf('/')+1);
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        
        Account result;
        
        if(!string.isBlank(accountId)){
            result =  [SELECT Id,Name,(SELECT Id,Name from Contacts)
                       FROM Account
                       WHERE Id = :accountId];
        }
        return result;
    }
}