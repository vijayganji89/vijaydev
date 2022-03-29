public class SE_SLDSInputFileLightningCtrl {

    public Attachment attach {get;set;}
    public SE_SLDSInputFileLightningCtrl(){
        attach = new Attachment();
    }
    public PageReference save() {
        system.debug(attach);
        return null;
    }

}