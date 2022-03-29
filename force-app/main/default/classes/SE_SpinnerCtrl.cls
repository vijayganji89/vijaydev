public class SE_SpinnerCtrl {
    public List<Account> accountsToDisplay {get;set;}
    public SE_SpinnerCtrl(){
        accountsToDisplay = [select id, name from Account Limit 200];
    }
    public PageReference saveSpinner(){
        long now = datetime.now().gettime();
        while(datetime.now().gettime()-now<5000); // Busy loop for 5000 ms
        return null;
    }
}