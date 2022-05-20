trigger ContactTrigger on Contact (Before Update) {
    for(contact con : Trigger.new){
        string description = '';
        if(con.FirstName!=Trigger.oldMap.get(con.Id).FirstName){
        	description=con.FirstName;
        }
        if(con.Email!=Trigger.oldMap.get(con.Id).Email){
        	description=description + '-->'+con.Email;
        }
        if(con.Phone!=Trigger.oldMap.get(con.Id).Phone){
        	description=description + '-->'+con.Phone;
        }
        if(description!=NULL){
            con.description  = description;
        }
    }
}