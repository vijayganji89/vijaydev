trigger AccountTrigger on Account (before insert, before update) {
    AccountTriggerHandler handler = new AccountTriggerHandler();
    if(Trigger.IsBefore && Trigger.IsInsert){
        handler.beforeInsert(Trigger.New);
    }
    if(Trigger.IsBefore && Trigger.IsUpdate){
        handler.beforeUpdate(Trigger.Old, Trigger.New, Trigger.OldMap, Trigger.NewMap);
    }
}