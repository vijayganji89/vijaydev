public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String lastName){
        List<Contact> contactsToReturn = new List<Contact>();
        for(integer i=1;i<=numberOfContacts;i++){
            contactsToReturn.add(new Contact(FirstName='Test'+ i, LastName=lastName));
        }
        return contactsToReturn;
    }
}