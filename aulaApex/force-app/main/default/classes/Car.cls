public with sharing class Car {

    private String tipo;
    private String cor;
    private String placa;
    private Integer numeroPortas;
    private Integer velocidadeAtual = 0;
    
    public Car(String pTipo, String pCor, String pPlaca, Integer pNumeroPortas) 
        
    {
        this.tipo = pTipo;
        this.cor = pCor;
        this.placa = pPlaca;
        this.numeroPortas = pNumeroPortas;
        
    }

    public void acelerar(Integer pAceleracao){
        this.velocidadeAtual = pAceleracao;

        system.debug('Acelerou '+this.velocidadeAtual);

        }
    }
