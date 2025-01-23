@isTest
public class AnimalLocatorTest {

    @isTest
    static void GetAnimalNameByIdTest() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String animalName = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('hungry hippo', animalName, 'The animal name should be "hungry hippo".');
    }
}