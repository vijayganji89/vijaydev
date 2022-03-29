trigger UpdateProductAmount on Product__c (before update, after update) {
    List<Product__c> allproducts = new List<Product__c>();
    for(Product__c product : Trigger.new){
        product.Amount__c= product.Amount__c+100;
        if(Trigger.isAfter)
            allproducts.add(product);
            
    }
    if(Trigger.isAfter)
        update allproducts;
}