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
	
}