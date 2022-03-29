trigger RestrictContactByName on Contact (before insert, before update, before delete, after delete) {
    system.debug('size of Trigger.New =============== ' + Trigger.New.size());
    //check contacts prior to insert or update for invalid data
    For (Contact c : Trigger.New) {
        if(c.LastName == 'INVALIDNAME') {   //invalidname is invalid
            c.AddError('The Last Name "'+c.LastName+'" is not allowed for DML');
        }

    }
    system.debug('Total number of records =============== ' + [SELECT COUNT() FROM Contact]);
}