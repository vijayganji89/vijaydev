public class ParkLocator {
    public static String[] country(string countryName) {
        ParkService.ParksImplPort parks = 
            new ParkService.ParksImplPort ();
        return parks.byCountry(countryName);
    }
}