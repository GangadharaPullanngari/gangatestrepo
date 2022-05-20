trigger OpptyTrigger on Opportunity (AFTER Insert,after update,after DELETE,AFTER UNDELETE) {
    set<Id> accountIds = new set<Id>();
    if(Trigger.isDelete){
        for(opportunity oppty : Trigger.old){
            if(oppty.AccountId!=NULL){
            	accountIds.add(oppty.AccountId);
            }
        }
    }
    else{
        for(opportunity oppty : Trigger.new){
            if(oppty.AccountId!=NULL){
            	accountIds.add(oppty.AccountId);
            }
        }
    }
    
    if(accountIds.size()>0){
       list<Account> accountListToUpdate = new list<account>();
        for(AggregateResult res : [select AVG(Amount)avg,accountId accId FROM Opportunity WHERE closeDate=THIS_FISCAL_QUARTER AND AccountId IN:accountIds GROUP BY ACCOUNTID]){
            accountListToUpdate.add(new account(Id=string.valueof(res.get('accId')),Current_Quarter_Average_Amount__c = integer.valueof(res.get('avg'))));
        }
        update accountListToUpdate;
    }

}