public class AccountHandler{
    public static Account insertNewAccount(string accountName){
        try {
            Account acc = new Account(Name=accountName);
            insert acc;
            return acc;
        } catch(DMLException ex){
            return null;
        }
    }
}