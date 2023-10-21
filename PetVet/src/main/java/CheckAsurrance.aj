import main.PetStore;
import main.User;

public aspect CheckAsurrance {
	
	static pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
	before() : verifyAssurance(){
		System.out.println("Verify Assurance...");
	}
	static pointcut verify():execution(void PetStore.makeAppointment(..));
    after(): verify() {
    	System.out.println("La cita fue agendada exitosamente"); 
    }
}




