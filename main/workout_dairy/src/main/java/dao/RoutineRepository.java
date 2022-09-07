package dao;

import java.util.ArrayList;
import dto.Routine;

public class RoutineRepository {
	
	private ArrayList<Routine> listofRoutine = new ArrayList<Routine>();
	
	public RoutineRepository() {
		Routine Beginner = new Routine("R0001", "5x5 Strenth", "8");
		Beginner.setText("초급자를 위한 루틴입니다");
		Beginner.setCategory("Beginner Routine");
		
		Routine intermediate = new Routine("R0002", "MAD COW", "10");
		intermediate.setText("중급자를 위한 근비대 루틴입니다");
		intermediate.setCategory("Intermediate Routine");
		
		Routine Expert = new Routine("R0003", "Smlov", "12");
		Expert.setText("고급자를 위한 스쿼트 증량 루틴입니다");
		Expert.setCategory("Expert Routine");
		
		listofRoutine.add(Beginner);
		listofRoutine.add(intermediate);
		listofRoutine.add(Expert);
		
		
	}
	public ArrayList<Routine>getAllRoutines() {
		return listofRoutine;
	}
	
	public Routine getRoutineById(String routineId) {
		Routine routineById = null;
		
		for(int i =0; i<listofRoutine.size(); i++) {
			Routine routine = listofRoutine.get(i);
			if (routine != null && routine.getRoutine_id() != null && routine.getRoutine_id().equals(routineById)) {
				routineById = routine;
				break;
			}
		}
		return routineById;
	}
}
