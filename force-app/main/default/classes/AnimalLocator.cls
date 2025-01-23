public with sharing class AnimalLocator {

    public static String getAnimalNameById(Integer IdAnimal){

        String result = null;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + IdAnimal);
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            result = response.getBody();
            System.debug('The animal is: ' + result);
        } else {
            System.debug('Erro na resposta: ' + response.getStatusCode() + ' - ' + response.getStatus());
        }
        return result;
    }
    }
