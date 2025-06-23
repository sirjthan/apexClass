public with sharing class DemonstraEstrutura {
    public DemonstraEstrutura() {

    }

    public static void variaveis() {
        
              //Aqui é um exemplo de declarção de variável
        Boolean ehGremista = true;
        system.debug('a variável ehGremista tem o valor de '+ehGremista);

            /*Declaração de uma variável
            TIPO + NOME DA VARIAVEL = VALOR INICIAL
            */
        string nomeAluno = 'Maria';
        
            //Transformando valor boolean em string
        String transformandoTipo = string.valueOf(ehgremista);

        //Exemplo com varias variaveis
        Integer idade = 10;
        String nome = 'Mariana';
        Boolean ehMenina = true;
        system.debug('O valor deginido para a variável idade é = '+idade);
        system.debug('O valor deginido para a variável nome é = '+nome);
        system.debug('O valor deginido para a variável ehMenina é = '+ehMenina);
        
        //Outro exemplo
        Integer valornaContaDoGian;
        system.debug('O valor definido para a variável valornaContaDoGian é ' +valornaContaDoGian);

        valornaContaDoGian = 1000;
        system.debug('O valor definido para a variável valornaContaDoGian é ' +valornaContaDoGian);

        //variavel Double pode ter casas decimais
        Double valorComCasasDecimais = 10.25524;
        Decimal valorDecimal = 15.05;

        //Date trabalha com datas
        Date today = System.Today();
        system.debug('O dia de hoje é '+today);

        DateTime dataEHora = System.Now();
        system.debug('O dia e a hora agora é '+dataEHora);

        Integer diasASomar = 7;

        dataEHora = dataEHora.addDays(diasASomar);
        system.debug('A data e hora daqui a '+diasASomar+' dias é '+dataEHora);

        Id idValido = '001D00D000i8MUDIAZ';
        
   
             //Variáveis do tipo sObject

        Account acc = new Account();
        acc.Name = 'Goku';
        acc.Phone = '123456';
        system.debug('O valor do objeto acc é '+acc);
        
        //insert acc;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Teste opp';
        opp.Description = 'oportunidade criada para testes';
        system.debug('O valor do objeto opp é = '+opp);

        //exemplos utilização sObject
        Account recuperaDadosAccount = (Account)DemonstraEstrutura.loadObjectInfoById('001aj00001BhIxKAAV');
        system.debug('recuperaDadosAccount = ' +recuperaDadosAccount);

        Opportunity oppRecupera = (Opportunity)DemonstraEstrutura.loadObjectInfoById('006aj00000CdqwHAAR');
        system.debug('Opportunity = ' +oppRecupera);
        
            
    }   

    public static sObject loadObjectInfoById(Id recordId) {
        DescribeSObjectResult objectType = recordId.getSobjectType().getDescribe();
        List<String> objectFields = new List<String>(objectType.fields.getMap().keySet());
        String query = 'SELECT ' +String.join(objectFields, ',') + ' FROM ' + objectType.getName() +
        ' WHERE Id = \'' + String.escapeSingleQuotes(recordId) + '\' LIMIT 1';
        return Database.query(query);
    }
 
}