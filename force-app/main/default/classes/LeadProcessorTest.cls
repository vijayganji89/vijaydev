@isTest
public class LeadProcessorTest{
    
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        // insert 200 leads
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead(LastName='Lead '+i, 
                Company='Test Company'));
        }
        insert leads;
    }
    
    private static testMethod void testBatch(){
        Test.startTest();
        LeadProcessor  leadprocessor = new LeadProcessor ();
        Id batchId = Database.executeBatch(leadprocessor);
        Test.stopTest();

        // after the testing stops, assert records were updated properly
        Lead lead = [select LeadSource from Lead LIMIT 1];
        System.assertEquals('Dreamforce', lead.LeadSource);
    }

}