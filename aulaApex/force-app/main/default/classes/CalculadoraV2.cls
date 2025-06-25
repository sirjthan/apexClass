public with sharing class CalculadoraV2 {
    
        public static Decimal somar(Decimal valoraSerSomado, Decimal pValorSomar){
            return (valoraSerSomado + pValorSomar);
        }
        public static Decimal subtrair(Decimal valoraSerSubtraido,Decimal pValorSubtrair){
            return (valoraSerSubtraido - pValorSubtrair);
        
    }
}

/*Decimal valorInicial = 21.43;
System.debug('o valor final é '+valorInicial);
valorInicial = CalculadoraV2.somar(valorInicial, 43.22);
System.debug('o valor final é '+valorInicial);
valorInicial = CalculadoraV2.subtrair(valorInicial, 43.22);
System.debug('o valor final é '+valorInicial);*/

