public with sharing class DemonstraEstrutura {
   
    //CONSTANTES
    private static final Double TAXA_IFO = 0.5;
    private static Double TAXA_IFO_VARIANTE = 0.5;

    eNum DiaDaSemana{
        DOMINGO, SEGUNDA, SABADO
    }
        


    
    public DemonstraEstrutura() {

    }

    public static void variaveis() {
        
            //Aqui é um exemplo de declarção de variável
            Boolean ehGremista = true;
            system.debug('a variável ehGremista tem o valor de '+ehGremista);

            /*Declaração de uma variável
            TIPO + NOME DA VARIAVEL = VALOR INICIAL
            */
            
        
            //Transformando valor boolean em string
        

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

        public static void variaveisDeColecao(){
            //Lista
            
            List<String> listNames = new list<String>();
            

            //adicionando o nome da Ana,Maria,Carlos
            listNames.add('Ana');
            listNames.add('Maria');
            listNames.add('Carlos');
            system.debug('listNames '+listNames);

            system.debug('Recuperando segundo valor da lista listNames '+listNames[1]);

            List<Integer> listaDeInteiros = new List<Integer>{10,20};
            system.debug('Lista de Inteiros '+listaDeInteiros);

            Account acc1 = new Account();
            acc1.Name = 'Conta 1';
            acc1.Phone = '1111111';
                    
            Account acc2 = new Account();
            acc2.Name = 'Conta 2';
            acc2.Phone = '2222222';

            List<Account> accountList = new List<Account>{acc1,acc2};
            

            Account acc3 = new Account();
            acc3.Name = 'Conta 3';
            acc3.Phone = '13333333';

            accountList.add(acc3);
            system.debug('Lista de Contas '+accountList);

            system.debug('Lista de Contas pelo segundo nome '+accountList[1].Name);
            
            //Sets
            List<String> listNames2 = new List<String>{'Ana','Maria','Carlos'};
            system.debug('ListNames2 '+listNames2);

            Set<String> setNames = new Set<String>{'Ana','Maria','Carlos','Ana','Maria'};
            system.debug('setNames ' +setNames);
            
            //Maps
            Map<String,Integer> nomeIdadeMap = new Map<String,Integer>();
            
            nomeIdadeMap.put('Ana',30);
            nomeIdadeMap.put('Maria',29);    
            nomeIdadeMap.put('Carlos',31);
            system.debug('nomeIdaeMap '+nomeIdadeMap);
            system.debug('Idade da Ana '+nomeIdadeMap.get('Ana'));

            
            
            if(nomeIdadeMap.containskey('André')){
            system.debug('Idade da André '+nomeIdadeMap.get('André'));
            } else system.debug('Não existe a chave André');      
            
            //Recuperando as informação de uma conta pelo CNPJ
            Map<String,Account> contaPorCnpjMap = new Map<String,Account>();

            Account accEx1 = new Account();
            accEx1.Name = 'Conta 1';
            accEx1.Phone = '322432';

            contaPorCnpjMap.put('153254685', accEx1);
            contaPorCnpjMap.put('4552123456', new Account(Name = 'Conta 2', Phone = '123456'));
            
            Account accEx3 = new Account(Name = 'Conta 3',Phone = '1737356');

            Account accEx2 = contaPorCnpjMap.get('4552123456');
            accEx2.Phone = '2221222';
            accEx2.NumberofLocations__c = 20;
            system.debug('accEx2 '+accEx2);
        
        
            system.debug('contaPorCnpjMap '+contaPorCnpjMap);
        
            //Exercicio: variavel mapa (pessoa,idade - 4 registros) recuperar idade do terceiro

            /* Criar uma variável mapa, que recebe um nome de uma pessoa, e armazena a idade, criar 4 registros, e recuperar a idade do terceiro registro mostrando em um system.debug
            Map<String, Integer> nomesIdadesMap = new Map<String,Integer>{'Maria' => 30, 'José' => 50, 'Tatiane' => 20, 'André' => 35};
            system.debug('A idade da terceira pessoa é: ' + nomesIdadesMap.get('Tatiane'));*/
            //é possivel recuperar por posição em vez de por nome?     

            // Criando o Map com nome como chave (String) e idade como valor (Integer)
            Map<String, Integer> pessoas = new Map<String, Integer>();

            // Inserindo 4 registros
            pessoas.put('Alice', 25);
            pessoas.put('Bruno', 30);
            pessoas.put('Carla', 28);
            pessoas.put('Diego', 35);

            // Pegando as chaves em uma lista para acessar pela posição
            List<String> chaves = new List<String>(pessoas.keySet());

            // Importante: a ordem do Map **não é garantida**, mas para fins de estudo, esse exemplo assume que queremos o terceiro elemento da lista de chaves

            // Obtendo a chave do terceiro registro (índice 2, pois começa em 0)
            String terceiraChave = chaves[2];

            // Pegando a idade associada a essa chave
            Integer idadeTerceiro = pessoas.get(terceiraChave);

            // Fazendo o report no debug
            System.debug('Idade do terceiro registro: ' + idadeTerceiro);
    
            //ENUM  - enumeração
            DiaDaSemana hoje = DiaDaSemana.SEGUNDA;

       
            }

        public static void condicionais(){
            //IF == Se
            Integer num = 5;

            if(num > 2){
                system.debug('É MAIOR DO QUE 2');
            }

            //ELSE IF + ELSE
            Integer idade = 25;

            //se a idade for menor que 18 escreve que é criança
            // se a idade for maior ou IGUAL que 18 e menor do que 30 escrever você é jovem
            // senão escrever você é adulto
            //ESTRUTURA : IF + ELSE IF + ELSE
            if(idade < 18){
                system.debug('você é uma criança');
            }else if(idade >= 18 && idade < 30){
                system.debug('você é jovem');
            }else{
                if(idade > 60){
                system.debug('você é idoso');
                }else{
                system.debug('você é adulto');
                }
            }

            //TERNARIO DA CONDICAO ACIMA
            String textoIdade = idade < 18 ? 'você é uma criança' : (idade >= 18 && idade < 30 ? 'você é jovem' : (idade > 60 ? 'você é idoso' :'você é adulto' ));
            system.debug(textoIdade);

            //SWITCH
            //0 = Domingo, 1 = Segunda, 2 =Terça, 3 = Quarta .... 6 = Sabado
            Integer dayWeek = 3;

            switch on dayWeek{
                when 0{
                    system.debug('Domingo');
                }
                when 1{
                    system.debug('Segunda');
                }
                when 2{
                    system.debug('Terça');
                }
                when else{
                    system.debug('Dia inválido');
                }
            }

                //IF TERNÁRIO
                Integer numVal  = 30;
                String result = numVal > 5 ? 'Num é maior do que 5' : 'Num é menor ou igual a 5';
    

        }
        //LOOPS
        public static void loops(){
            //FOR
            for(Integer i = 0; i < 10; i++){
                system.debug('EXECUTOU O FOR COM O NUMERO '+i);
            }

            //WHILE
            Integer count = 1;
            while(count <= 10){
                system.debug('Count é : '+count);
                count++;
            }

            //DO-WHILE
            Integer counter = 0;
            do{
                system.debug('O valor de COUNTER é: '+counter);
                counter++;
            }while (counter < 5);

            //FOREACH
            for(Account acc : [SELECT Name FROM Account]){
                system.debug('O nome da conta é :'+acc.Name);
            }

            List<Integer> integerList = new List<Integer>{1,2,3,4,5,6,7,8,9};
            for(Integer num : integerList){
                system.debug('O valor de NUM é '+num);
            }
        }

        //OPERADORES
        public static void operadores(){
            //ARITMETICOS + - * /
            Integer exSoma = 1 + 2;
            Integer exSub = 1 - 2;
            Integer exMult = exSoma * exSub;
            Integer exDiv = 10/5;

            //ATRIBUIÇÃO =
            Integer atribuiNum = 10;

            //COMPARAÇÃO == != < > <= >=
            if(exSoma == 3){

            }
            if(exSoma != 1){

            }
            if(exSoma  > 2){

            }

            //LÓGICOS && || !
            if(exSoma > 2 && exSoma < 4){

            }
            if(exSoma > 2 || exSoma < 4){

            }
            if( !(exSoma == 3) ){

            }

            //CONDICIONAIS ? :
            String ternarioEx = exSoma > 3 ? 'É maior do que 3' : 'É menor ou igual à 3';
        }

        //OPERADORES DE ATRIBUIÇÃO
        // =
        // +=
        // -=
        // *=
        // /=
        // %= pega o resto de um número de uma divisão

        //FUNÇÕES E MÉTODOS

        //função para calcular a média de uma lista de números
        //List<Double> doubleList = new List<Double>{10,20,5,50}
        public static Double calcAvarege(List<Double> numbers){
            Double sum = 0;
            for(Double num : numbers){
                sum += num;
            }
            return sum / numbers.size();
        }  
        
        //FUNÇÃO recebe dois inteiros(num1 e num2) E RETORNA A a soma deles (somaDoisNumeros);
        //List<Double> doubleList = new List<Double>{num1,num2}
        //Retonra uma lista com todos os contatoos
        public static List<Contact> getContacts(String name){
            List<Contact> contactList = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE FirstName = :name];
            return contactList;
        }

        public static void adjustphone(){
            List<Contact> contactList = [SELECT Id, Email, Phone FROM Contact];
            for(Contact c : contactList){
                if(c.Phone == null){
                    system.debug('O coantato está com o telefone vazio: '+c.Id);
                }        
                    
        }
    }    

        //exemplo DML
        public static void exampleDml(){
            List<Account> accList = [SELECT Id FROM Account WHERE Name = 'Teste 1'];

            //inserindo dados
            Account acc = new Account();
            acc.Name = 'Teste 1';
            if(accList.size() == 0){
                 insert acc;
        }
        //atualizando dados    
        Account accUpd = [SELECT Id, Name FROM Account WHERE Name = 'Teste 1' LIMIT 1];
        accUpd.name = 'Teste 2';
        update accUpd;

        //exclui registros
        delete accList;
    }

        

        //exemplo DML em massa
        public static void exampleDmlEmMassa(){
            List<Account> accountToInsert = new List<Account>();
            
            Account acc1 = new Account();
            acc1.Name = 'Exemplo em massa 1';
            accountToInsert.add(acc1);
           
            Account acc2 = new Account();
            acc2.Name = 'Exemplo em massa 2';
            accountToInsert.add(acc2);
            
            Account acc3 = new Account();
            acc3.Name = 'Exemplo em massa 3';
            accountToInsert.add(acc3);
            
            Account acc4 = new Account();
            acc4.Name = 'Exemplo em massa 4';
            accountToInsert.add(acc4);

            insert accountToInsert;

         }

           
}

    

    