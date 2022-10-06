public class firstapexclass {
    
    public static void method1(){
        //map<integer,string> newmap = map<integer,string>();
       // for(integer i=num2;i<num1;i++){
            
            //system.debug('Rank' + '   '+i);
       // }
        
        for(account acc: [select id,Name,phone from account]){
            
            acc.Name='Uday';
            acc.phone='8904514374';
            
            system.debug('acc'+acc);
            
        }
    }

}