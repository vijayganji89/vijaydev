({
    setphone : function(component, event, helper) {
        var text = component.find("phone").get("v.value");
        //alert(text);
        console.log(text);
        $A.get("e.c:PhoneNumberEvent").setParams({phone: text}).fire();
    }
})