global class otherBatchjob implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name FROM Account LIMIT 1';
       
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> scope)
    {
        for(Account a : scope)
        {
            a.Name = a.Name + ' Updated by Batch job';
        }
        update scope;
    }
    global void finish(Database.BatchableContext BC) 
    {
            // Add batch job calling logic in Finish method
            //otherBatchjob b = new otherBatchjob(); 
            //database.executebatch(b);
    }
}