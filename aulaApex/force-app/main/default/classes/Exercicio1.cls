public with sharing class Exercicio1 {
 
    public String nome {get; set;}
    public Integer idade {get; set;}
    public String endereco {get; set;}


    public Exercicio1 (String nome, Integer idade, String endereco){
        this.nome = nome;
        this.idade = idade;
        this.endereco = endereco;
        
    }

    public String getName(){
        return nome;
    }

     public Integer getIdade(){
        return idade;
    }
        
}

// Exercicio1 pes = new Exercicio1('Thanatos', 1000, 'hell');
// pes.getname();

// system.debug('Nome :' +pes.nome);
// pes.getIdade();
// system.debug('Idade :' +pes.idade);

/*pegar uma classe que vão adicionar atributos nome/idade/end. recuperar atributos.

Map<String,Integer> nomeIdadeEndMap = new Map<String,Integer>();
            
            nomeIdadeEndMap.put('Ana',30);
            nomeIdadeEndMap.put('Maria',29);    
            nomeIdadeEndMap.put('Carlos',31);
            system.debug('nomeIdadeEndMap '+nomeIdadeEndMap);*/

  /* public Exercicio1() {
        List<String> listNames = new List<String>{'Ana','Maria','Carlos'};
        List<Integer> listIdade = new List<Integer>{10,54,64};
        List<String> listEnd = new List<String>{'End5','End2','End3'};
        system.debug('Os nomes são '+listNames);
        system.debug('Os idades são '+listIdade);
        system.debug('Os end são '+listEnd);
       
    
    }*/

            // exerc 2 criar lista shopping list com 2 attri listname e listproduct

             /*return 'Name: '+pNome+' Idade: '+pIdade+' Endereco:


    public static String nome(String pNome){
        pNome = 'Thanatos';
        return 'Name:'+pNome;
    }

    public static Integer idade(Integer pIdade){
        pIdade = 54;
        return +pIdade;
    }
    

    public static String end(String pEnd){
        pEnd = 'End5';
        return 'End: '+pEnd;
    }*/

    