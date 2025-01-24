@isTest
public class ParkLocatorTest {
  @isTest
  public static void testCallout() {
    Test.setMock(WebServiceMock.class, new ParkServiceMock());
    String ct = 'USA';
    List<String> result = ParkLocator.country(ct);
    System.debug(result);

    System.assertEquals(3, result.size(), 'The result wasnt the one expected');
    System.assertEquals(
      'Yellowstone',
      result[0],
      'The result wasnt the one expected'
    );
    System.assertEquals(
      'Mackinac National Park',
      result[1],
      'The result wasnt the one expected'
    );
    System.assertEquals(
      'Yosemite',
      result[2],
      'The result wasnt the one expected'
    );
  }

  @isTest
  public static void testException() {
    // Configura o mock para lançar uma exceção
    Test.setMock(WebServiceMock.class, new ParkServiceExceptionMock());

    // Invoca o método e verifica se o comportamento esperado ocorre
    String ct = 'InvalidCountry';
    List<String> result = ParkLocator.country(ct);

    // Verifica se o método retorna uma lista vazia ao tratar a exceção
    System.assertEquals(0, result.size(), 'The result should be an empty list');
  }
}
