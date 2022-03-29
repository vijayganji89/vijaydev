public class MapperClass{

    public void checkAccess(Level1Class level1){
        //Level2Class level2 = new Level2Class();
        Level2Class  level2 = (Level2Class) level1;
        system.debug('+++++++++++++++'+level2.property1);
        system.debug('+++++++++++++++'+level2.property2);
        system.debug('+++++++++++++++'+level2.property3);
        level2.newMethod();
    }

}