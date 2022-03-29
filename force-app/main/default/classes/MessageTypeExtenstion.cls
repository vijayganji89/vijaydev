public class MessageTypeExtenstion extends EP_OutboundMessage.MessageType {
    public string customToString() {
        DOM.Document docObj = new DOM.Document();
        dom.XmlNode msg = docObj.createRootElement('MSG', HeaderCommon_type_info[0], 'soapenv');
        msg.setNamespace('tns', HeaderCommon_type_info[0]);
        msg.setAttributeNS('schemaLocation', HeaderCommon_type_info[0], HeaderCommon_type_info[1], HeaderCommon_type_info[2]);
        dom.XmlNode headerNode = msg.addChildElement(HeaderCommon_type_info[0],null,null);
        
        HeaderCommonTypeExtension hd = (HeaderCommonTypeExtension)HeaderCommon;
        //hd = (HeaderCommonTypeExtension)HeaderCommon;
        //HeaderCommon = 
        hd.customToString(headerNode);
        
        dom.XmlNode payloadNode = msg.addChildElement(Payload_type_info[0],null,null);
        dom.XmlNode statusNode = msg.addChildElement(StatusPayload_type_info[0],null,null);
        system.debug('***XXXX***'+docObj.toXmlString());
        return docObj.toXmlString();
    }
}