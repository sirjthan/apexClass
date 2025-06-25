 public with sharing class Calculadora {
    public Decimal valor;
    public Calculadora(Decimal pValor){
        this.valor = pValor;

    }
    public void somar(Decimal pValorSomar){
        this.valor += pValorSomar;
    }

    public void subtrair(Decimal pValorSubtrair){
        this.valor -= pValorSubtrair;
    }

    
}

/*public void mult(Decimal pValorMult){
        this.Valor * pValorMult;
    }

    public void dividir(Decimal pValorDividir){
        this.Valor / pValorDividir;
    }

    Calculadora newValue = new Calculadora(10.00); 
    newValue.somar(40.89);
    newValue.subtrair(30.66);

    system.debug('valor final '+newValue);*/