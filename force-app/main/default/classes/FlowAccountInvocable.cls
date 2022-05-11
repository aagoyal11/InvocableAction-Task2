public  class FlowAccountInvocable {

    @InvocableMethod(label='Fetch Accounts' description = 'This will return the list of all accounts' category='Account')
    public static List<List<Account>> welcomeMessage(List<List<String>> accountIdsList){
        List<List<Account>> allAccounts = new List<List<Account>>();
        allAccounts.add([Select Id, Name From Account WHERE Id IN : accountIdsList.get(0) LIMIT 10]);
        return allAccounts;
    }
   
}
