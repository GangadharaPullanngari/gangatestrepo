trigger OpportunityTrigger on Opportunity (before update) {
	set<Id> opptyIds = new set<Id>();
    for(Opportunity oppty : Trigger.new){
        if(oppty.stageName == 'Closed Won' && Trigger.oldMap.get(oppty.Id).stageName!=oppty.stageName){
        	opptyIds.add(oppty.Id);    
        }
    }
    map<Id,integer> opptyLineItmesCountMap = new map<Id,integer>();
    if(opptyIds.size()>0){
        for(opportunity opp : [select Id,(select Id From OpportunityLineItems ) FROM Opportunity WHERE ID IN:opptyIds]){
            opptyLineItmesCountMap.put(opp.Id,opp.OpportunityLineItems.size());
        }
    }
    for(Opportunity oppty : Trigger.new){
        if(oppty.stageName == 'Closed Won' && Trigger.oldMap.get(oppty.Id).stageName!=oppty.stageName){
            if(opptyLineItmesCountMap.get(oppty.Id)>0 && oppty.CloseDate>Date.today()){
                oppty.stageName = 'Closed Won';
            } 
            else{
                oppty.addError('conditoins not met to close the opportunity');
            }
        }
    }
}