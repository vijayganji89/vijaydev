public with sharing class ExportToExcel {

    public String exportDataString { get; set; }
    public String testdata{ get; set; }

    public PageReference goToExportPage() {
         testdata='test';
         return Page.pgExportpage;
    }
    
     public PageReference goToExportPage(String test) {
         testdata=test;
         return null;
    }

}