public with sharing class AbcNewController {

    public AbcNewController(ApexPages.StandardController controller) {

    } 
     
    private Map<String, String> createDefaultValues() {
    // Obtain the magic ids
    PageReference p = new PageReference('/' + Employee__c.SObjectType.getDescribe().getKeyPrefix() + '/e?nooverride=1');
    String html = p.getContent().toString();
    Map<String, String> labelToId = new Map<String, String>();
    Matcher m = Pattern.compile('<label for="(.*?)">(<span class="requiredMark">\\*</span>)?(.*?)</label>').matcher(html);
    while (m.find()) {
        String label = m.group(3);
        String id = m.group(1);
        labelToId.put(label, id);
    }
    // Relate the magic ids to the SObject fields
    Map<String, String> params = new Map<String, String>();
    for (SObjectField field : Employee__c.SObjectType.getDescribe().fields.getMap().values()) {
        Object value = getDefaultValue(field);
        if (value != null) {
            DescribeFieldResult f = field.getDescribe();
            String label = f.getLabel();
            if (labelToId.containsKey(label)) {
                // Format
                String valueAsString;
                if (f.getType() == DisplayType.Date) {
                    //valueAsString = ((Date) value).format();
                } else if (f.getType() == DisplayType.Datetime) {
                    valueAsString = ((Datetime) value).format();
                } else if (f.getType() == DisplayType.Boolean) {
                    valueAsString = ((Boolean) value) ? '1' : '0';
                } else {
                    valueAsString = String.valueOf(value);
                }
                params.put(labelToId.get(label), valueAsString);
            }
        }
    }
    return params;
}
private Object getDefaultValue(SObjectField field) {
    // Defaulting business logic goes here
    //field.Department_ID__c='123';
    //field.Organization_Id='12';
    return field;
}
public PageReference url() {
    PageReference p = new PageReference('/' + Employee__c.SObjectType.getDescribe().getKeyPrefix() + '/e');
    Map<String, String> m = p.getParameters();
    m.putAll(createDefaultValues());
    m.put('nooverride', '1');
    m.put('retURL', ApexPages.currentPage().getParameters().get('retURL'));
    return p;
}

}