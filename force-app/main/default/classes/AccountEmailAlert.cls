public class AccountEmailAlert {
    public Integer rec { get; set; }  
    public Integer tot { get; set; }
    integer count= 0;
    integer totalRecs = 0;
    integer LimitSize= 5;
    
    public List<wrapAccount> wrapAccountList {get; set;}
    public list <Account> acc {get;set;}
    public String searchKey {get;set;}
    Set<Id> accids = new Set<Id>();
    public AccountEmailAlert( ) {
        tot=totalRecs = [select count() from account];
    }
    public void search(){
        wrapAccountList = new List<wrapAccount>();
        if(searchKey!=null && searchKey!='' && wrapAccountList !=null)
        {
            string searchquery='select Name,id,Type,Rating from account where name like \'%'+searchKey+ '%\'LIMIT:limitsize OFFSET:count';
            acc= Database.query(searchquery); 
            for (Account ac : acc){
                wrapAccountList.add(new wrapAccount(ac));
            }
            
        }   
        else {
            ApexPages.Message msg = new Apexpages.Message(ApexPages.Severity.Warning,'Can not be empty textbox' );
            ApexPages.addmessage(msg);
            clear();  
        }       
    }
    public void clear(){
        wrapAccountList.clear();
    }
    public void sendEmail()
    {   
        if(wrapAccountList != null){
            processSelected();
            if(accids.isEmpty()){
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please select the checkbox'));
            }
            List<Contact> conList=[SELECT Id, Name, Email, AccountId FROM Contact where Accountid IN:accids ];
            system.debug('error'+conList);
            EmailTemplate templateId = [Select id from EmailTemplate where name = 'Contact Email Templates'];
            List<Messaging.SingleEmailMessage> allmsg = new List<Messaging.SingleEmailMessage>();
            for(contact con : conList)
            {            
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setTemplateID(templateId.Id); 
                mail.setTargetObjectId(con.id);
                mail.setReplyTo(con.Email);
                mail.setSaveAsActivity(false);
                allmsg.add(mail);
            }
            
            for(wrapAccount wa:wrapAccountList){
                Integer counter= allmsg.size();
                if(counter>0 && wa.selected==true){
                    Messaging.sendEmail(allmsg,false);
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,counter+' ' +'E-mail sent successfuly to related contacts')); 
                    
                    if(counter>0 && wa.selected==false){
                        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'No records selected from checkbox')); 
                    }
                }
                
            }
        }
        
        else{
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING, 'You can not send email without fetching records'));
        }
    }
    
    public void processSelected() {
        acc = new List<Account>();      
        for(wrapAccount wrapAccountObj : wrapAccountList) {
            if(wrapAccountObj.selected == true) {              
                acc.add(wrapAccountObj.acc1);                  
            } 
        }    
        for(Account aa:acc)
        {
            accids.add(aa.id);
        }
    }
    public class wrapAccount {
        public Account acc1 {get; set;}
        public Boolean selected {get; set;}
        public wrapAccount(Account a) {
            acc1 = a;
            selected = false;
        }       
    }
    
    public PageReference Firstbtn() {
        count=0;
        return null;
    }
    public PageReference prvbtn() {
        count=count-limitsize;
        return null;
    }
    public PageReference Nxtbtn() {
        
        count=count+limitsize;
        search();
        return null;
    }
    public PageReference lastbtn() {
        count= totalrecs - math.mod(totalRecs,LimitSize);
        return null;
    }
    public Boolean getNxt() {
        if((count+ LimitSize) > totalRecs)
            return true;
        else
            return false;     
    }
    public Boolean getPrv() {
        if(count== 0)
            return true;
        else
            return false;
    }
}