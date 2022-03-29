public with sharing class InvokeWebService {
    public string allcountries {get;set;}
    public pageReference getCountries(){
        wwwWebservicexNetCountry.countrySoap  proxyClass = new wwwWebservicexNetCountry.countrySoap();
        proxyClass.timeout_x = 20000 ; // timeout in milliseconds
        String retVal = proxyClass.GetCurrencies();
        //System.debug(retVal);
        allcountries  = retVal ;
        return null;
    }
}