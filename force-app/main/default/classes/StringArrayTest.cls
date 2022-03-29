public class StringArrayTest{
    public static List<string> generateStringArray(integer numberOfElements){
        List<string> listToReturn = new List<string>();
        for(integer i=0;i<numberOfElements; i++) {
            listToReturn.add('Test ' + i);
        }
        return listToReturn;
    }
}