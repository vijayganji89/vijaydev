public class CreditExceptionMainClass {

    public class CreditExceptionMessage {
        public CreditMessageType MSG;
        public CreditExceptionMessage (){
            MSG = new CreditMessageType ();
        }
    }
    
    public class CreditMessageType {
        public EP_OutboundMessageWSDLToApex.HeaderCommonType HeaderCommon;
        public EP_OutboundMessageWSDLToApex.PayloadType Payload;
        public CreditMessageType (){
            HeaderCommon = new EP_OutboundMessageWSDLToApex.HeaderCommonType();
            Payload = new EP_OutboundMessageWSDLToApex.PayloadType();
            //statusPayload = new EP_OutboundMessageWSDLToApex.StatusPayload();
        }
    }
}