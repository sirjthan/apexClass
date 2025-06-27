trigger AccountTrigger on Account (after insert) {
    
    List<Opportunity> newOpps = new List<Opportunity>();
    
        for(Account acc : Trigger.new){
        Opportunity opp = new Opportunity();
        opp.Name = acc.Name + 'Opportunity';
        opp.CloseDate = Date.today().addMonths(6);
        opp.AccountId = acc.Id;
        opp.StageName = 'Prospecting';
            
        newOpps.add(opp);
    }
    
    insert newOpps;
}

//toda vez que inserir um lead enviar um email para proprietario do mesmo avisando que o lead foi inserido