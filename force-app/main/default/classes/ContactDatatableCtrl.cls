public class ContactDatatableCtrl {
    public List<Contact> contactList {get;set;}
    public ContactDatatableCtrl(){
        contactList = [SELECT Id, Name, Account.Name,Title, Email,Phone,Department,MailingCity,MailingState,MailingCountry from Contact where calendar_year(Createddate) NOT IN  (2019,2018) LIMIT 2000];
    } 
}