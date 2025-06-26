public with sharing class ContactsFromAccount {
    public List<Contact> contacts{get;set;}
    public ContactsFromAccount(String idAccount) {
        contacts = new List<Contact>();//lista foi instanciada , poderia ser colocado query sql dentro dos parênteses
        contacts = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId = :idAccount];//lista foi preenchida
        system.debug('contacts' +contacts);
    }
}