public class AccountHelper {
    public static void notDeleteAccountsWithContacts(List<Account> accs){
        for (Account a : [SELECT Id FROM Account
                     	  WHERE Id IN (SELECT AccountId FROM Contact) 
                          AND Id IN :accs]) {
        		Trigger.oldMap.get(a.Id).addError(
            	'Cannot delete account with related contacts.');
    	}
    }
}