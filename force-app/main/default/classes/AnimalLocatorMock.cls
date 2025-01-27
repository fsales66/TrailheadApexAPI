@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
  global HttpResponse respond(HttpRequest req) {
    HttpResponse res = new HttpResponse();
    res.setHeader('Content-Type', 'application/json');
    res.setStatusCode(200);
    res.setBody(
      '{"animal": {"id": 1, "name": "hungry hippo", "eats": "grass", "says": "snort"}}'
    );
    return res;
  }
}
