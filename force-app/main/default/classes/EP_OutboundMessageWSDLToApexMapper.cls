public class EP_OutboundMessageWSDLToApexMapper {

    public void setupData(EP_OutboundMessageWSDLToApex.OrderMessage msgType ) {
        populateHeader(msgType);
        populateOrderPayload(msgType);
        populateStatusPayload(msgType);
    }
    
    public void setupCreditData(CreditExceptionMainClass.CreditExceptionMessage creditMessageType ) {
        populateCreditHeader(creditMessageType );
        populateCreditPayload(creditMessageType );
    }
    
    public string generateCreditJSON(CreditExceptionMainClass.CreditExceptionMessage  creditMessageType ) {
        return JSON.serialize(creditMessageType);
    }
    
    public string generateJSON(EP_OutboundMessageWSDLToApex.OrderMessage msgType ) {
        return JSON.serialize(msgType);
    }
    
    public void populateCreditHeader(CreditExceptionMainClass.CreditExceptionMessage  msgType) {
        msgType.MSG.HeaderCommon.MsgID = 'MsgID';
        msgType.MSG.HeaderCommon.InterfaceType = 'MsgID';
        msgType.MSG.HeaderCommon.SourceCompany = 'MsgID';
        string sourceRespAdd = 'MsgID';
        msgType.MSG.HeaderCommon.SourceUpdateStatusAddress = 'MsgID';
        msgType.MSG.HeaderCommon.SourceResponseAddress = 'MsgID';
        msgType.MSG.HeaderCommon.TransportStatus = 'MsgID';
        msgType.MSG.HeaderCommon.ContinueOnError = true;
        msgType.MSG.HeaderCommon.ComprehensiveLogging = true;
        msgType.MSG.HeaderCommon.UpdateDestinationOnDelivery = true;
        msgType.MSG.HeaderCommon.CallDestinationForProcessing = true;
        msgType.MSG.HeaderCommon.UpdateSourceOnDelivery = false;
        msgType.MSG.HeaderCommon.UpdateSourceOnReceive = false;
        msgType.MSG.HeaderCommon.UpdateSourceAfterProcessing = false;
        msgType.MSG.HeaderCommon.ObjectType = 'ObjectType';
        msgType.MSG.HeaderCommon.CommunicationType = 'CommunicationType ';
    }
    
    /*
     Method to Map order Payload part
  */
    public void populateCreditPayload(CreditExceptionMainClass.CreditExceptionMessage  msgType) {
        EP_OutboundMessageWSDLToApex.any_x anyxInst = new EP_OutboundMessageWSDLToApex.any_x();
        EP_OutboundMessageWSDLToApex.order orderInst = new EP_OutboundMessageWSDLToApex.order();
        orderInst.sellToId = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.reqDlvryDt = 'sellToId';
        orderInst.expctdDlvryDt = 'sellToId';
        orderInst.orderStartDt = 'sellToId';
        orderInst.loadingDt = 'sellToId';
        orderInst.dlvryDt = 'sellToId';
        orderInst.deliveryType = 'sellToId';
        orderInst.transportManagmnt = 'sellToId';
        orderInst.clientId = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.paymentType = 'sellToId';
        orderInst.pricingStockHldngLocId = 'sellToId';
        orderInst.logisticTransporterCode = 'sellToId';
        orderInst.pricingTransporterCode = 'sellToId';
        orderInst.pricingDate = 'sellToId';
        orderInst.deliveryType = 'sellToId';
        orderInst.exceptionNr = 'sellToId';
        orderInst.sellToId = 'sellToId';
        orderInst.docStatus = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.reqDlvryDt = 'sellToId';
        orderInst.paymentMethod = 'sellToId';
        orderInst.expctdDlvryDt =  'sellToId';
        orderInst.orderType = 'sellToId';
        orderInst.paymentTerm = 'sellToId';
        orderInst.currencyId = 'sellToId';
        orderInst.logisticStockHldngLocId = 'sellToId';
        orderInst.orderStartDt =  'sellToId';
        orderInst.seqId = 'sellToId';
        orderInst.transportManagmnt = 'sellToId';
        orderInst.comment = 'sellToId';
        orderInst.orderEpoch = 'sellToId';
        orderInst.totalOrderQty = 'sellToId';
        orderInst.loadingDt =  'sellToId';
        orderInst.priceValidityPeriod = 'sellToId';
        
        orderInst.identifier = populateOrderIdentifier();
        orderInst.OrderLines = populateOrderLines();
        
        anyxInst.order.add(orderInst);
        msgType.MSG.Payload.any_x.add(anyxInst); 
    }
    
     
    public void populateHeader(EP_OutboundMessageWSDLToApex.OrderMessage msgType) {
        msgType.MSG.HeaderCommon.MsgID = 'MsgID';
        msgType.MSG.HeaderCommon.InterfaceType = 'MsgID';
        msgType.MSG.HeaderCommon.SourceCompany = 'MsgID';
        string sourceRespAdd = 'MsgID';
        msgType.MSG.HeaderCommon.SourceUpdateStatusAddress = 'MsgID';
        msgType.MSG.HeaderCommon.SourceResponseAddress = 'MsgID';
        msgType.MSG.HeaderCommon.TransportStatus = 'MsgID';
        msgType.MSG.HeaderCommon.ContinueOnError = true;
        msgType.MSG.HeaderCommon.ComprehensiveLogging = true;
        msgType.MSG.HeaderCommon.UpdateDestinationOnDelivery = true;
        msgType.MSG.HeaderCommon.CallDestinationForProcessing = true;
        msgType.MSG.HeaderCommon.UpdateSourceOnDelivery = false;
        msgType.MSG.HeaderCommon.UpdateSourceOnReceive = false;
        msgType.MSG.HeaderCommon.UpdateSourceAfterProcessing = false;
        msgType.MSG.HeaderCommon.ObjectType = 'ObjectType';
        msgType.MSG.HeaderCommon.CommunicationType = 'CommunicationType ';
    }
    
    /*
     Method to Map order Payload part
  */
    public void populateOrderPayload(EP_OutboundMessageWSDLToApex.OrderMessage msgType) {
        EP_OutboundMessageWSDLToApex.any_x anyxInst = new EP_OutboundMessageWSDLToApex.any_x();
        EP_OutboundMessageWSDLToApex.order orderInst = new EP_OutboundMessageWSDLToApex.order();
        orderInst.sellToId = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.reqDlvryDt = 'sellToId';
        orderInst.expctdDlvryDt = 'sellToId';
        orderInst.orderStartDt = 'sellToId';
        orderInst.loadingDt = 'sellToId';
        orderInst.dlvryDt = 'sellToId';
        orderInst.deliveryType = 'sellToId';
        orderInst.transportManagmnt = 'sellToId';
        orderInst.clientId = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.paymentType = 'sellToId';
        orderInst.pricingStockHldngLocId = 'sellToId';
        orderInst.logisticTransporterCode = 'sellToId';
        orderInst.pricingTransporterCode = 'sellToId';
        orderInst.pricingDate = 'sellToId';
        orderInst.deliveryType = 'sellToId';
        orderInst.exceptionNr = 'sellToId';
        orderInst.sellToId = 'sellToId';
        orderInst.docStatus = 'sellToId';
        orderInst.shipToId = 'sellToId';
        orderInst.reqDlvryDt = 'sellToId';
        orderInst.paymentMethod = 'sellToId';
        orderInst.expctdDlvryDt =  'sellToId';
        orderInst.orderType = 'sellToId';
        orderInst.paymentTerm = 'sellToId';
        orderInst.currencyId = 'sellToId';
        orderInst.logisticStockHldngLocId = 'sellToId';
        orderInst.orderStartDt =  'sellToId';
        orderInst.seqId = 'sellToId';
        orderInst.transportManagmnt = 'sellToId';
        orderInst.comment = 'sellToId';
        orderInst.orderEpoch = 'sellToId';
        orderInst.totalOrderQty = 'sellToId';
        orderInst.loadingDt =  'sellToId';
        orderInst.priceValidityPeriod = 'sellToId';
        
        orderInst.identifier = populateOrderIdentifier();
        orderInst.OrderLines = populateOrderLines();
        
        anyxInst.order.add(orderInst);
        msgType.MSG.Payload.any_x.add(anyxInst); 
    }
    
    /*
     Method to Map Status Payload
  */
    public void populateStatusPayload(EP_OutboundMessageWSDLToApex.OrderMessage msgType) {
        //msgType.StatusPayload.StatusPayload = null;
    }
    
    /*
     Method to populate Order Line items
  */
    public EP_OutboundMessageWSDLToApex.OrderLines populateOrderLines() {
      EP_OutboundMessageWSDLToApex.OrderLines orderLinesObj = new EP_OutboundMessageWSDLToApex.OrderLines();
      EP_OutboundMessageWSDLToApex.OrderLine ordLine = new EP_OutboundMessageWSDLToApex.OrderLine();
        for (integer i=0; i<3;i++) {
         ordLine = new EP_OutboundMessageWSDLToApex.OrderLine();
         ordLine.seqId = 'seqId';
         ordLine.identifier = populateOrderLineItemIdentifier();
         orderLinesObj.orderLine.add(ordLine);
        }
        return orderLinesObj;
    }
    
    /*
     Method to populate  Order Line Item Identifier
  */
    public EP_OutboundMessageWSDLToApex.LineIdIdentifier populateOrderLineItemIdentifier() {
      EP_OutboundMessageWSDLToApex.LineIdIdentifier orderLineidentifier = new EP_OutboundMessageWSDLToApex.LineIdIdentifier();
      orderLineidentifier.lineId = 'lineId ';
      return orderLineidentifier;
    }
    
    /*
     Method to populate Order Id Identifier
  */
    public EP_OutboundMessageWSDLToApex.OrderIdIdentifier populateOrderIdentifier() {
      EP_OutboundMessageWSDLToApex.OrderIdIdentifier OrderIdIdentifierObj = new EP_OutboundMessageWSDLToApex.OrderIdIdentifier();
        OrderIdIdentifierObj.orderId = 'orderId';
      return OrderIdIdentifierObj;
    }
}