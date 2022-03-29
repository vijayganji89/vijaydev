public class DatatableExampleabdsctrl {

    public String author { get; set; }

    public String xmlheader { get; set; }

    public String endfile { get; set; }

    public DataModel dModel { get; set; }
    
    public DatatableExampleabdsctrl ()
    {
       author ='salam';
       xmlheader='<?xml version="1.0"?><?mso-application progid="Excel.Sheet"?>'; 
       endfile ='</Workbook>';
        DataModel dm = new DataModel();
        //dm = new DataModel();
        dm.data = new list<DataModel.Model>();
        /**
        Fetching Accout data
        */
        DataModel.Model model = new DataModel.Model();
        model.sheetname = 'Account';
        model.headers = new list<string>{'Id','Name','Phone','BillingCountry'};
        model.data = new list<map<string,string>>();
        //for(Account act: [SELECT Id, Name, Phone, BillingCountry from Account Where BillingCountry != null and Phone != null]){
            map<string,string> rowdata = new map<string,string>();
            rowdata.put('Id','1');
            rowdata.put('Name','1');
            rowdata.put('Phone','2');
            rowdata.put('BillingCountry','1');
            model.data.add(rowdata);
           
        //}
        dm.data.add(model);
        //dModel.add(dm);
        
        model = new DataModel.Model();
        model.sheetname = 'Contact';
        model.headers = new list<string>{'Id','Name','Phone','Email'};
        model.data = new list<map<string,string>>();
        //for(Contact cnt: [SELECT Id, Name, Phone, Email from Contact Where Email != null and Phone != null]){
            map<string,string> rowdata1 = new map<string,string>();
            rowdata1.put('Id','1');
            rowdata1.put('Name','1');
            rowdata1.put('Phone','1');
            rowdata1.put('Email','1');
            model.data.add(rowdata1);
        //}
        dm.data.add(model);
        //dModel.add(dm);
    }
}