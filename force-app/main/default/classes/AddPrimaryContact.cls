public class AddPrimaryContact implements Queueable {
    
    private Contact contact;
    private string stateAbbreviation;
    
    public AddPrimaryContact(Contact contact, string stateAbbreviation) {
        this.contact= contact;
        this.stateAbbreviation= stateAbbreviation;
    }

    public void execute(QueueableContext context) {
        List<Account> accounts = [select Id, BillingState from Account where BillingState =: stateAbbreviation LIMIT 200];
        List<Contact> contacts = new List<Contact>();
        Contact cont;
        for (Account account : accounts) {
           cont = new Contact();
           cont = contact.clone();
           cont.AccountId = account.Id;
           contacts.add(cont);
        }
        insert contacts;
    }
}