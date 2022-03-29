@isTest
public class DailyLeadProcessorTest{
    
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';

    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead(LastName='Lead '+i, 
                Company='Test Company'));
        }
        insert leads;
    }
    
    private static testMethod void DailyLeadProcessor_test(){
        List<Lead> leads;
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',CRON_EXP,new DailyLeadProcessor());
        leads = [select Id, LeadSource from Lead LIMIT 200];
        system.assertEquals(null, leads[0].LeadSource);
        Test.stopTest();
        leads = [select Id, LeadSource from Lead LIMIT 200];
        system.assertEquals('Dreamforce', leads[0].LeadSource);
    }
}