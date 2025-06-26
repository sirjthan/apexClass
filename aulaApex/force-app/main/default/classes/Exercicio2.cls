 public with sharing class Exercicio2 {
    public String listName {get;set;}
    public List<String> items {get;set;}

    public Exercicio2(String listName) {
        this.listName = listName;
        items = new List<String>();
    }

    public void addItem(String itemName){
        items.add(itemName);

    }

    public void printList(){
        system.debug('O nome da lista: '+listName);
        system.debug('Os itens da lista: '+items);

    }
  
}

/*Exercicio2 shop = new Exercicio2('NomeLista');
shop.addItem('Cafe');
shop.addItem('Agua');
shop.addItem('Açucar');
shop.addItem('pinga');
shop.printList();*/