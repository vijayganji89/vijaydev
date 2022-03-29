@isTest
private class TestRestrictContactByName {
    @isTest static void checkContactName(){
        Contact c = new Contact(LastName ='INVALIDNAME');
        Database.SaveResult result  = Database.insert(c,false);
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
		System.assertEquals('The Last Name "'+c.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());


        
        
    }
}