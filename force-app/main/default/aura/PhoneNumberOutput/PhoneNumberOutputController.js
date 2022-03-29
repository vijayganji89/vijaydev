({
     getphone : function(component, event, helper) {
        var text = event.getParam("phone");
        //   alert(text);
        component.set("v.number", text);
       
    }
})