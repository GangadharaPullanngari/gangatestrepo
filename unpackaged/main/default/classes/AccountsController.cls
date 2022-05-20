public class AccountsController {
    @AuraEnabled
    Public static list<account> getAccounts(){
        return [select Id,AccountNumber,Name,Phone From Account Order By CreatedDate DESC limit 5];
    }

}