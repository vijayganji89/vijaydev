@isTest
private class TestVerifyDate {
    @isTest static void testcheckDate1(){
        Date fromdate = Date.newInstance(2015,1,1);
        Date todate = Date.newInstance(2015,1,24);
        Date expecteddate = VerifyDate.CheckDates(fromdate,todate);
        system.assertEquals(expecteddate ,todate );
    }
    
    @isTest static void testcheckDate2(){
        Date fromdate = Date.newInstance(2015,1,1);
        Date todate = Date.newInstance(2015,1,31);
        Date expecteddate = VerifyDate.CheckDates(fromdate,todate);
        Date expecteddate2 = Date.newInstance(2015,1,31);
        system.assertEquals(expecteddate ,expecteddate2 );
    }
}