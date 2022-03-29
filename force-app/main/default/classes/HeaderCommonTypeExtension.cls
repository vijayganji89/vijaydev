public class HeaderCommonTypeExtension extends EP_OutboundMessage.HeaderCommonType {
    public string testVariable;
    public void customToString(dom.XmlNode xmlNode){
        
        xmlNode.addChildElement(MsgID_type_info[0],null,null);
        xmlNode.addChildElement(InterfaceType_type_info[0],null,null);
    }
}