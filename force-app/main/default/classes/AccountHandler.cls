public class AccountHandler{
    //creating new feature branch
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