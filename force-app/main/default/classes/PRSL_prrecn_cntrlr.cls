public class PRSL_prrecn_cntrlr{

    public String exportDataString { get; set; }
    public PageReference goToExcelExportPage() {
         return Page.pgExportToExcel;
    }
    public PageReference goTopdfExportPage() {
         //return Page.prsl_prrecn_pdfexportwrapper;
         return null;
    }
    

    
    public class ReportException extends Exception {}
    
}