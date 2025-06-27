@isTest
public  class AccountTriggerTest {
    @isTest
    static void AccountTriggerTest() {
        Account acc = new Account();
        acc.Name = 'teste 1';
        acc.Phone = '123456';
        
        Test.startTest();
        insert acc;
        Test.stopTest();

        List<Opportunity> oppList = new List<Opportunity>([SELECT Id FROM Opportunity WHERE AccountId = :acc.Id]);

        system.AssertEquals(1, oppList.size());
    }
}