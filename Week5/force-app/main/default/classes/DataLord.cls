public class DataLord {
    public static Integer NumAccounts(){
        Integer answer = [SELECT COUNT() FROM Account];
        System.debug(answer);
        return answer;
    }
    
    public static Integer NumHot(){
        Integer answer = [SELECT COUNT() FROM Account WHERE Rating = 'Hot'];
        System.debug(answer);
        return answer;
    }
    
    public static Integer NumComplex(){
        Integer answer = [SELECT COUNT() FROM Account WHERE Name LIKE '%&%'];
        System.debug(answer);
        return answer;
    }
    
    public static List<Account> BigFive(){
        return [SELECT Name, AnnualRevenue FROM Account ORDER BY AnnualRevenue DESC LIMIT 5];
    }
    
    public static Opportunity LastBigOpportunity(){
        return [SELECT Name FROM Opportunity WHERE Amount > 100000 ORDER BY CloseDate DESC LIMIT 1];
    }
    
    public static List<Contact> MajorPlayers(){
        return [SELECT FirstName, LastName, Account.Name FROM Contact WHERE Account.Rating = 'Hot'];
    }
    /*
    public static Account MostPopularAccount(){
        return [SELECT Name FROM Account ORDER BY (SELECT Name FROM Contacts) DESC LIMIT 1];
    }
    */
    
    public static List<List<sObject>> searchTom(){
        return [FIND 'Tom' IN NAME FIELDS RETURNING Contact(Name), Lead(Name)];
    }
    
    public static List<List<sObject>> searchAccounts(){
        return [FIND '*a*o*' IN ALL FIELDS RETURNING Account(Name)];
    }
    
    public static void SpawnContacts(){
        List<Contact> toInsert = new List<Contact>();
        Integer count = 200;
        for (Integer i = 0; i < count; i++){
            Contact con = new Contact();
            con.LastName = 'Name' + (i + 1);
            System.debug(con.LastName);
            toInsert.add(con);
        }
        System.debug(toInsert);
        insert toInsert;
    }
    
    public static void CreateHomes(){
        List<Account> toInsert = new List<Account>();
        Integer count = 3;
        for (Integer i = 0; i < count; i++){
            Account acc = new Account();
            acc.Name = 'Account' + (i + 1);
            System.debug(acc.Name);
            toInsert.add(acc);
        }
        System.debug(toInsert);
        insert toInsert;
    }
    
    public static void Relocate(){
        List<Contact> toDelete = [SELECT LastName FROM Contact ORDER BY LastModifiedDate DESC LIMIT 50];
        System.debug(toDelete);
        delete toDelete;
    }
    
    public static void AssignHomes(){
        List<Account> accTo = [SELECT Name FROM Account ORDER BY LastModifiedDate DESC LIMIT 3];
        List<Contact> conToAssign = [SELECT LastName FROM Contact ORDER BY LastModifiedDate DESC LIMIT 150];
        for (Contact currContact : conToAssign){
            Id accId = accTo[(Integer)(Math.Random()*3)].Id;
            currContact.AccountId = accId;
        }
        update conToAssign;
    }
}