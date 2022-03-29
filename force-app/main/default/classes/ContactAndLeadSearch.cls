public class ContactAndLeadSearch{
    public static List<List< SObject>> searchContactsAndLeads(string searchString){
        List<List< SObject>> searchResults =[FIND :searchString in ALL FIELDS 
                                            RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        return searchResults ;
    }
}