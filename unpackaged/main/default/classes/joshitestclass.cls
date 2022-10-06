public class joshitestclass {
    
    public string Fname='Ganga';
        public string Email='Ganga@gmail.com';
        public static string Lname='Manga';
        public static integer salary=10000;
    public list<Account> acc;
           
    public  joshitestclass(){
        Email ='Joshi@gmail.com';
        Lname='Manga';
        salary=10000;
        
        system.debug('Email from constrctor ---->'+Email);
    }
    
    public static void method(){
       Lname='Manga';
        salary=10000; 
        system.debug('lname from method ---->'+Lname);
        system.debug('salary from method ---->'+salary);
        
        for(integer i=0;i<5;i++){
            // system.debug('salary from method ---->'+salary); 
            
            Customer__c cus = new Customer__c();
            cus.Name ='Banu';
            cus.Email__c='banu@gmail.com';
            cus.Mobile__c= 890456;
            insert cus;
           system.debug('cus from method ---->'+cus);      
        }
        
        
          }
    public static void method2(){
        list<string> allphonenumbers = new list<string>();
        list<string> allnames = new list<string>();
        list<Account> acclist = [select id,Name,Phone from Account limit 50];
        for(Account acc: acclist){
           // system.debug('cus from method ---->'+acc); 
            
            allphonenumbers.add(acc.Phone);
            allnames.add(acc.Name);
            system.debug(' allphonenumbers from method 2 ---->'+allphonenumbers.size());
            system.debug(' *****allnames from method 2 ---->'+allnames.size());
        }
        }
     public static void method3(){
        List<Account> acc = new List<Account>();
 acc= [select id,Name from Account where Name='Gangaraju'];
delete acc;
     }
    public static void method5(){
        List<Account> acc = new List<Account>();
 acc= [select id,Name from Account where Name='Gopi'];
delete acc;
    
    }
}