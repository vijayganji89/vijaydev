public class ContactSearch{
    public static List<Contact> searchForContacts(string lastName, string mailingPostalCode){
        List<Contact> contactsToReturn = [SELECT id, Name from Contact where LastName=:lastName 
                                            and MailingPostalCode=:mailingPostalCode];
        return contactsToReturn ;
    }
}