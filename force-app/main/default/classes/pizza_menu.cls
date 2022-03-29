public class pizza_menu {
    public string pizza_name{get;set;}
    public integer price{get;set;}
    public void addmenu()
    {
        try

    {
        //menu__c m=new menu__c();
        //m.name=pizza_name;
        //m.price__c=price;
        //insert m;

    }

    catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +e.getMessage());
}
    }
}