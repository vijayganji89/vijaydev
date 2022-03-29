public class SE_RepeatPageCtrl {
    public Map<string,Map<string, Map<string,string>>> inlineMap {get; set;}
    public string docusignTestPassword {get;set;}
    public SE_RepeatPageCtrl(){
        inlineMap = new Map<string,Map<string, Map<string,string>>>();
        map<string,string> map3 = new map<string,string>();
        map<string, map<string,string>> map2 = new map<string, map<string,string>>();
        //map2 = new map<string, map<string,string>>();
        map3.put('20cm', '10pcs');
        map2.put('rose', map3);
        inlineMap.put('flowers', map2);
        docusignTestPassword ='1234';
    }
}