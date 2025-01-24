public class ParkLocator {
  public static List<String> country(String searchCountry) {
    ParkService.ParksImplPort service = new ParkService.ParksImplPort();
    return service.byCountry(searchCountry);
  }
}
