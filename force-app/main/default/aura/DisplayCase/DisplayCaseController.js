({
    getCaseFromId: function(component,record,callback) {
        var action = component.get("c.getCaseFromId");
            
        action.setcallback(this,function(response){
                           var state = response.getState();
                           if(state === "SUCCESS"){                                
                               component.set("v.record",response.getReturnValue());
                           }        
        });
        
        $A.enqueueAction(action);
    }
})