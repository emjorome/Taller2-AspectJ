import main.String;
import main.User;

public aspect CheckAsurrance {
    // Define a Pointcut is
    // collection of JoinPoint 
	// call say* of class HelloAspectJDemo.
	
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
	before() : verifyAssurance(){
		String validar = readConsole("Name of your pet :");
        for(User usuarios:users) {
        	if (usuarios.getPetName().equals(validar)) {
        		System.out.println("Bienvenido," + usuarios.getPetOwner());     
        	}
        }
	}

    after() verifyAssurance() {
    	System.out.println("La cita fue agendada exitosamente"); 
    }
}

