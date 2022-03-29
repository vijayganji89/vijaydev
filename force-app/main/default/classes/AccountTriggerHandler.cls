public class AccountTriggerHandler {
    public static boolean beforeInsert_runOnce = true;
    public static boolean afterInsert_runOnce = true;
    public static boolean beforeUpdate_runOnce = true;
    public static boolean afterUpdate_runOnce = true;
    public static boolean beforeDelete_runOnce = true;
    public static boolean afterDelete_runOnce = true;
    
    public void beforeInsert(List<Account> newList){
        if(beforeInsert_runOnce){
            beforeInsert_runOnce = false;
            for(Account acc: newList){
                acc.Website ='www.google.com';
            }
        }
    }
    
    public void afterInsert(List<Account> newList, Map<Id, Account> newMap){
        if(afterInsert_runOnce){
            afterInsert_runOnce = false;
            //do nothing
        }
    }
    
    public void beforeUpdate(List<Account> oldList, List<Account> newList, Map<Id, Account> oldMap, Map<Id, Account> newMap){
        if(beforeUpdate_runOnce){
            beforeUpdate_runOnce = false;
            for(Account acc: newList){
                acc.Website ='www.google.com';
            }
        }
    }
    
    public void afterUpdate(List<Account> oldList, List<Account> newList, Map<Id, Account> oldMap, Map<Id, Account> newMap){
        if(afterUpdate_runOnce){
            afterUpdate_runOnce = false;
            //do nothing
        }
    }
}