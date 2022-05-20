public class candidatesController {
    public candidatesController() {

    }
	@auraenabled
    Public static void createCandidateRecord(string Name){
        Candidates__c candidateRecrod = new Candidates__c();
        candidateRecrod.Name = Name;
        insert candidateRecrod;
    }
    @AuraEnabled
    Public static list<Candidates__c> getData(){
        list<Candidates__c> candidates = [SELECT Id,Name,Phone__c,Primary_Email__c,Skills__c,Total_Years_experience__c From Candidates__c];
        return candidates;
    }
    @AuraEnabled(cacheable=true)
    Public static list<Candidates__c> getCandidatersData(){
        list<Candidates__c> candidates = [SELECT Id,Name,Phone__c,Primary_Email__c,Skills__c,Total_Years_experience__c From Candidates__c];
        return candidates;
    }
    @AuraEnabled(cacheable=true)
    Public static list<Candidates__c> getcandidateRecords(){
        list<Candidates__c> candidates = [SELECT Id,Name,Phone__c,Primary_Email__c,Skills__c,Total_Years_experience__c From Candidates__c];
        return candidates;
    }
}