public with sharing class ContaBancaria {
    public String nomeCorrentista;
    public Decimal saldoAtual;


    public ContaBancaria(String pNomeCorrentista, Decimal pSaldoAtual) {
        this.nomeCorrentista = pNomeCorrentista;
        this.saldoAtual = pSaldoAtual;


    }

    public void sacar(Decimal valorSacado){
    this.saldoAtual -= valorSacado;
    }

    public void extrato(){
        system.debug('Seu saldo atual em '+system.now()+' é de R$ '+this.saldoAtual);

    }

    //Escreva um método que receba um praâmetro que some o valor ao saldo, esse vai ser o método chamado "depositar"


    public void depositar(Decimal valorDepositado){
    this.saldoAtual -= valorDepositado;
    }

   
} 