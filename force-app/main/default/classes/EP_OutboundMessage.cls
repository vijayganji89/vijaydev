public class EP_OutboundMessage {
    public virtual class MessageType {
        public HeaderCommonType HeaderCommon;
        public PayloadType Payload;
        public String StatusPayload;
        public String[] HeaderCommon_type_info = new String[]{'HeaderCommon','http://www.trafigura.com/OrderSFDC_NAV','HeaderCommonType','1','1','false'};
        public String[] Payload_type_info = new String[]{'Payload','http://www.trafigura.com/OrderSFDC_NAV','PayloadType','1','1','false'};
        public String[] StatusPayload_type_info = new String[]{'StatusPayload','http://www.trafigura.com/OrderSFDC_NAV','string','1','1','false'};
        public String[] apex_schema_type_info = new String[]{'http://www.trafigura.com/OrderSFDC_NAV','true','false'};
        public String[] field_order_type_info = new String[]{'HeaderCommon','Payload','StatusPayload'};
        
        
        public MessageType(){
            HeaderCommon = new HeaderCommonType();
            Payload= new PayloadType();
        }
    }
    
    public virtual class PayloadType {
        public string payloadmessage ;
        public PayloadType(){
        }
    }

    public virtual class HeaderCommonType {
        public String MsgID;
        public String InterfaceType;
        public String[] MsgID_type_info = new String[]{'MsgID','http://www.trafigura.com/OrderSFDC_NAV','','1','1','true'};
        public String[] InterfaceType_type_info = new String[]{'InterfaceType','http://www.trafigura.com/OrderSFDC_NAV','','1','1','true'};
        public HeaderCommonType(){
        }
    }
}