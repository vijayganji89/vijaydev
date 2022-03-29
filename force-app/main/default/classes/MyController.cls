public class MyController {

    public transient ApexPages.Component headerComponent { get; private set; }

    public MyController() {
        Type t = Type.forName('Component.c.FirstComponent');
        if(t != null) {
            this.headerComponent = (ApexPages.Component)t.newInstance();
        }
    }
    
     public void init() {
             system.debug('terminato');
        }
    
    public Component.Apex.PageBlock getDynamicForm() {
    Component.Apex.PageBlock dynPageBlock = new Component.Apex.PageBlock();
    
    
    Component.c.FirstComponent objPREL_pretem_dirrpt =new Component.c.FirstComponent()  ; 
    objPREL_pretem_dirrpt.id='tryin';
        
    
    
    
    
    dynPageBlock.childComponents.add(objPREL_pretem_dirrpt);
    
    
    return dynPageBlock;
}
    
    public Component.c.FirstComponent getHeaderWithDueDateCheck() {
        date dueDate = date.newInstance(2011, 7, 4);
        boolean overdue = date.today().daysBetween(dueDate) < 0;
        Component.Apex.PageBlock pb= new Component.Apex.PageBlock();
        //Component.c.SYSL_emphdr objPREL_pretem_dirrpt =new  Component.c.SYSL_emphdr ()  ; 
        Component.c.FirstComponent objPREL_pretem_dirrpt =new Component.c.FirstComponent()  ; 
        objPREL_pretem_dirrpt.id='tryin';
        
        pb.childComponents.add(objPREL_pretem_dirrpt);
        
        //return sectionHeader11 ;
        //if (overdue) {
        //sectionHeader.title = 'This Form Was Due On ' + dueDate.format() + '!';
        //return sectionHeader;
        //} else {
        //sectionHeader.title = 'Form Submission';
        return objPREL_pretem_dirrpt;
        //}
    }
    
    public Component.Apex.Detail getDynamicDetail() {
        Component.Apex.Detail detail = new Component.Apex.Detail();
        detail.expressions.subject = '{!acct.OwnerId}';
        detail.relatedList = false;
        detail.title = false;
        return detail;
    }
    
    
    
    public Component.c.FirstComponent getComponent()
    {
        Component.c.FirstComponent comp= new Component.c.FirstComponent();
        comp.Id='abcd';
        return comp;
    }
}