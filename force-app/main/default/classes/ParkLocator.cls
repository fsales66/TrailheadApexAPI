public class ParkLocator {
  public static List<String> country(String searchCountry) {
    try {
      ParkService.ParksImplPort service = new ParkService.ParksImplPort();
      return service.byCountry(searchCountry);
    } catch (Exception e) {
      System.debug('Erro ao chamar o serviço: ' + e.getMessage());
      return new List<String>();
    }
  }
}
