@isTest
private class AnimalLocatorTest {
    @isTest static  void testGetCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        string actualValue = AnimalLocator.getAnimalNameById(2);
        string expectedValue = 'bear';
        System.assertEquals(actualValue, expectedValue);
    }
}