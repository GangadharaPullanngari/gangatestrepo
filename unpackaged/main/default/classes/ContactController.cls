public class ContactController {
@AuraEnabled
    public static List <Opportunity> fetchContacts() {
        return [ SELECT Id, Name, Account.Name, CreatedBy.Name FROM Opportunity ORDER BY Name ASC,Account.Name DESC limit 10];
    }
}