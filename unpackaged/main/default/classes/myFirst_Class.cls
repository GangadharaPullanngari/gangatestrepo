Public class myFirst_Class {
    Public string FName;
    Public Integer age;
        
    //method with void type
    Public void processData(){
        FName = 'DWARAK';
        age = 30;
        getAccounts();
    }
    Private void getAccounts(){
        getAccounts2();
    }
    Private void getAccounts2(){
        
    }
    //example for a method with return type
    Public integer getAge(){
        integer age = 30;
        return age;
    }
    
    public static string getuserdata(){
        
        string Name = 'Ganga';
        return Name;
    }
    
      public static Contact createContact(Boolean doInsert, Id accId){
        Contact con = new Contact();
        con.AccountId = accId;
        con.FirstName = 'FirstName';
        con.LastName = 'LastName';
        con.Email = 'FirstName@test.com' + Math.floor(Math.random() * 1000);
        if(doInsert)
        {
            insert con;
        }
        return con;
    }

    /**
    * ***********************************************************
    * This method is test data for create Opportunity object
    * ***********************************************************
    */
    
     public static List<Opportunity>createOpportunity(Id accountId, Integer numOpps) {
		List<Opportunity> opps = new List<Opportunity>();
		for(Integer i = 1; i <= numOpps; i++) {
			Opportunity opp = new Opportunity();
			opp.name = 'Account ' + i;
			opp.accountId = accountid;
			opp.amount = 1000;
			opp.closeDate = Date.today().addDays(5);
			opp.stageName = 'Prospecting';
			opps.add(opp);
		}
		return opps;
	}
	
}