({
    getSobjectRecord : function(component) {
        var action = component.get("c.getrecords");
        action.setCallback(this, function(response) 
                           {
                               var state = response.getState();
                               console.log('***state'+state);
                               if (state === "SUCCESS") 
                               {
                                   var stringItems = response.getReturnValue();  
                                   component.set("v.sObjectRecords", stringItems);
                               }
                               
                           });
        $A.enqueueAction(action);
    },
    editRecord: function(component) {
        var recid = component.get("v.objectRec");
        console.log("***recid"+recid);
        var recidList = recid.split(';');
        var idList=[];
        for(var i=0;i<recidList.length;i++){
            var tmpstring = recidList[i].trim();
            if(tmpstring!='')
                idList.push(tmpstring);
        }
        if(idList.length==1){
            var editRecordEvent = $A.get("e.force:editRecord");
            editRecordEvent.setParams({
                "recordId":idList[0],
            });
            editRecordEvent.fire();   
        }else{
            //Show Error
            console.log('Error: Multiple Select not possible'); 
            this.showToast('error','Please Select one record only.');
        }
    },
    showToast : function (type,msg){
        //console.log('*** error type is'+showToast);
        //get the system showToast event
        var showToast = $A.get('e.force:showToast');
        
        //set the title and message params
        showToast.setParams(
            {
                'message': msg,
                'mode':'dismissible',
                'type':type,
                'duration':'7000'
            }
        );
        //fire the event
        showToast.fire();
    }  
})