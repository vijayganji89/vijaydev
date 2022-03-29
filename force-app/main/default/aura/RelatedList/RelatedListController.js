({
    doInit : function(component, event, helper) {
        helper.getSobjectRecord(component);
    },
    getRecord : function (component, event, helper) {
        var selectedItem = event.currentTarget;
        var qid = selectedItem.dataset.record;
        console.log('***qid'+qid);
        var navEvt = $A.get("e.force:navigateToSObject");
        console.log('***navEvt'+navEvt);
        navEvt.setParams({
            "recordId": qid,
            "slideDevName": "detail"
        });
        navEvt.fire();
    },
    createRecord : function (component, event, helper) {
		var createRecordEvent = $A.get("e.force:createRecord");
        console.log('***createRecordEvent:'+createRecordEvent);
        createRecordEvent.setParams({
            //"recordTypeId" : "a0M9000000GdF7T", 
            "entityApiName": "Account"
        });
        createRecordEvent.fire();
    },
    
    doEdit: function(component, event, helper) {
        helper.editRecord(component);
    },
    
    selectRecord : function (component, event, helper){
        var assignIds = component.get("v.objectRec");
        var valueIs = event.getSource().get("v.value");
        var textIs = event.getSource().get("v.text");
        console.log('***valueIs:'+valueIs);
        console.log('***textIs:'+textIs);
        if(valueIs==true){
            if(assignIds){
                if(assignIds.indexOf(textIs)==-1)
                    assignIds+=';'+textIs;
            }else
                assignIds=textIs;
        }else{
            if(assignIds.indexOf(textIs)!=-1)
                assignIds=assignIds.replace(textIs,'');
        }
        component.set("v.objectRec",assignIds);
        console.log('***assignIds:'+assignIds);
    },
    deleteRecord : function(component, evt, helper) {
        console.log('***deleteQuoteRecord is called>');
        // Call the Apex controller and update the view in the callback
        var assignIds = component.get("v.objectRec");
        console.log('***assignIds:'+assignIds);
        var isDelete=false;
        var action = component.get("c.deleteQuotes");
        action.setParams({
            "deleteIds": assignIds
        })
        action.setCallback(this, function(response) {
            console.log('***response:'+JSON.stringify(response));
            var state = response.getState();
            if (state === "SUCCESS") {
                isDelete=true;
                console.log('***Success');
                var stringItems = response.getReturnValue();               
                component.set("v.sObjectRecords", stringItems);
            }
        });
        $A.enqueueAction(action);
    },
    opencontent : function(component, event, helper) {
        var con = component.find("contentbody");
        $A.util.toggleClass(con, "slds-hide");	
        var arrowup = component.find("arrowup");
        $A.util.toggleClass(arrowup, "slds-hide");	
        var arrowdown = component.find("arrowdown");
        $A.util.toggleClass(arrowdown, "slds-hide");	
    } 
})