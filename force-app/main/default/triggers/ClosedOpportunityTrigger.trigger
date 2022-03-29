trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasksList = new List<Task>();
    for(Opportunity opp: Trigger.New){
        if(opp.StageName=='Closed Won'){
            tasksList.add(new Task(Subject='Follow Up Test Task',
                                   WhatId=opp.Id));

        }
    }
    if(tasksList!=null)
        Database.insert(tasksList,false);

}