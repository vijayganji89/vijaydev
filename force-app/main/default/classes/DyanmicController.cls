public with sharing class DyanmicController 
{

List<Account> AccountList;

public PageReference SaveAccount()
{

    //upsert AccountList;
    update AccountList;
    return null;
}

public List<Account> getAccountList()
{
    //String fieldList = '';
    //system.debug(SObjectType.Account.FieldSets.MyFieldset.getFields());
    //for(Schema.FieldSetMember fsm : SObjectType.Account.FieldSets.MyFieldset.getFields())
    //{
    //    fieldList += fieldList.length()>0 ? ','+fsm.getFieldPath() : fsm.getFieldPath();
    //}
    //system.debug('Controller FieldSet'+ fieldList );        
    //return (List<Account>) Database.query('select ' + fieldList + ' from Account');
    AccountList= (List<Account>) Database.query('select Id,name,AccountNumber from Account');
    //return (List<Account>) Database.query('select Id,name,AccountNumber from Account');
    return AccountList;
}

public Component.Apex.PageBlockTable getMyPageBlockTable()
{
    Component.Apex.PageBlockTable table = new Component.Apex.PageBlockTable(var='acc');
    table.expressions.value='{!AccountList}';
    //for(Schema.FieldSetMember fsm : SObjectType.Account.FieldSets.MyFieldset.getFields())
    //{
        Component.Apex.OutputField outputField = new Component.Apex.OutputField();
        //outputField.expressions.value = '{!acc.' + fsm.getFieldPath() + '}';
        outputField.expressions.value = '{!acc.name}';
        //Component.Apex.Column column = new Component.Apex.Column(headerValue=fsm.getLabel());
        Component.Apex.Column column = new Component.Apex.Column(headerValue='Account Name');
        column.childComponents.add(outputField);
        table.childComponents.add(column);
        
        Component.Apex.OutputField outputField1 = new Component.Apex.OutputField();
        outputField1.expressions.value = '{!acc.AccountNumber }';
        Component.Apex.Column column1 = new Component.Apex.Column(headerValue='Account Number');
        column1.childComponents.add(outputField1);
        table.childComponents.add(column1);
        
        Component.Apex.InputField inputField = new Component.Apex.InputField();
        inputField.expressions.value = '{!acc.AccountNumber }';
        Component.Apex.Column column3 = new Component.Apex.Column(headerValue='Editable Account Number');
        column3.childComponents.add(inputField );
        table.childComponents.add(column3 );
    //}
    return table;
}
}