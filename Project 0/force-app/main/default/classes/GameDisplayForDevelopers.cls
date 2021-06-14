public class GameDisplayForDevelopers {
    
    public List<Game__c> games {get; set;}
    public List<Game_Reviews__c> gameReviews {get; set;}
    public String userInput {get; set;}
    
    public GameDisplayForDevelopers(){
        this.games = new List<Game__c>();
        this.games = [SELECT Name, Genre__c, Developer__c, CreatedById FROM Game__c
                      WHERE CreatedById =: UserInfo.getUserId()];
        
        this.gameReviews = new List<Game_Reviews__c>();
    }
    
    public void searchReviews(){
        
        this.gameReviews = [SELECT CreatedById, Review__c, User_Star_Rating__c FROM Game_Reviews__c
                            WHERE Name =: this.userInput];
    }
    
    public void clear(){
        this.gameReviews.clear();
    }
}