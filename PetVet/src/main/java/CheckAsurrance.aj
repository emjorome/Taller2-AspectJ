import main.verifyAssurance;

public aspect CheckAsurrance {
    // Define a Pointcut is
    // collection of JoinPoint 
	// call say* of class HelloAspectJDemo.
   
	
	pointcut callSay(): call(* *.say*()); 
	before() : verifyAssurance(){
    	
	}
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
    after() verifyAssurance() {
        
    }
}

