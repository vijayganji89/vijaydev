public class AnimalLocator {
    public static string getAnimalNameById(Integer animalId) {
        string animalName = '';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<string,Object> animal = (Map<string,Object>)results.get('animal');
            animalName = (string)animal.get('name');
        }
        return animalName;
    }
 }