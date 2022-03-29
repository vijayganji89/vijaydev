public with sharing class OpportunityExtn {

    public Opportunity opp ;
    public OpportunityExtn(ApexPages.StandardController controller) {
        opp = (Opportunity)controller.getRecord();
    }
    
    public PageReference savebutton(){
        update opp;
        Pagereference pr = new pagereference('/' + opp.id);
       
        return pr;
    }

}