public class GamerAccountInfoController {

    public Game_Account__c acct {get; set;} //create Game_account__c
       
    public GamerAccountInfoController()
    {
        //setting acct equal to the current user
        acct = [SELECT Id, Name, About_ME__c, Address_1__c, Date_Of_Birth__c FROM Game_Account__c WHERE CreatedById =: UserInfo.getUserId() LIMIT:1 ];
    
    }
}