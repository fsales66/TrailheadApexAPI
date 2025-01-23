public with sharing class GetExample {
    
    public static void getAnimals(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            Map<String,Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Receied the following animals: ');
            for(Object animal: animals){
                System.debug(animal);
            }
        }
    }
}