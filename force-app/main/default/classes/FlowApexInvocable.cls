public class FlowApexInvocable {
    @InvocableMethod(label='Welcome Message' description = 'This is display the welcome message' category='Welcome')
    public static List<OutputResource> welcomeMessage(List<InputResource> inputs){
        String message = '';
        List<OutputResource> outputToReturn = new List<OutputResource>();
        if(inputs != null && inputs.size() >0 ){
            InputResource input = inputs.get(0);
            OutputResource output = new OutputResource();
            output.name  = input.name;
            output.age   = input.age;
            output.place = input.place;
            outputToReturn.add(output);
            message = 'Welcome '+input.name +' Your age is '+input.age+' You are from '+input.place;
        }
       
        return outputToReturn;
    }
    public class OutputResource{
        @InvocableVariable(label='Your Name' description='Your Name')
        public String name;
        @InvocableVariable(label='Your Age'description='Your Age')
        public Integer age;
        @InvocableVariable(label='Your Place' description='Your Place')
        public String place;
    }
    public class InputResource{
        @InvocableVariable(label='Your Name' required='true' description='Your Name')
        public String name;
        @InvocableVariable(label='Your Age' required='true' description='Your Age')
        public Integer age;
        @InvocableVariable(label='Your Place' required='true' description='Your Place')
        public String place;
    }

}