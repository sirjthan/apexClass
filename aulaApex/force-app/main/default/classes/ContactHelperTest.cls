@isTest
public  class ContactHelperTest {
    @isTest
    static void testupdateContactEmail() {
        Contact ctt = new Contact();
        ctt.LastName = 'test';
        insert ctt;

        String email = 'text@text.com';
        
        test.startTest();
        ContactHelper.updateContactEmail(ctt.Id, email);
        Test.stopTest();

        Contact ctt2 = [SELECT Email FROM Contact WHERE Id = :ctt.Id LIMIT 1];
        System.assertEquals(email, ctt2.Email);

    }
    @isTest
    static void testupdateContactError() {
       
        String email = 'text@text.com';
        
        test.startTest();
        ContactHelper.updateContactEmail(null, email);
        Test.stopTest();

    

        }

         @isTest
    static void testupdateContactErrorTry() {
       
        String email = 'text@text.com';
        
        test.startTest();
        ContactHelper.updateContactEmail('001aj00001BhIxLAAV', email);
        Test.stopTest();

        

    }
}