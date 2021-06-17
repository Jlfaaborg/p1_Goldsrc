@isTest(SeeAllData=true)
public class GamerAccountInfoControllerTest {
    @isTest
    public static void test() {
        Test.startTest();
        GamerAccountInfoController gc = new GamerAccountInfoController();
        Game_Account__c ga = [SELECT id FROM Game_Account__c WHERE CreatedById =: UserInfo.getUserId() limit:1];
        Test.stopTest();
        system.assertEquals(ga.id, gc.account.id);
    }
}