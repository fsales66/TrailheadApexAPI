@isTest
global class ParkServiceExceptionMock implements WebServiceMock {
  global void doInvoke(
    Object stub,
    Object request,
    Map<String, Object> response,
    String endpoint,
    String soapAction,
    String requestName,
    String responseNS,
    String responseName,
    String responseType
  ) {
    // Simula uma exceção ao invocar o serviço
    throw new CalloutException('Mocked exception');
  }
}
