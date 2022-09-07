package dto;

import java.io.Serializable;

public class Routine implements Serializable {
	
		
		private static final long SerialVersionUID = -4274700572038677000L;
		
		private String Routine_id; 			//설정한 루틴의 아이디 설정, 1부터 시작 1씩 증가 
		private String Rname;				//루틴의 이름
		private String category;			//루틴의 분류(난이도에 따라서 초급,중급,고급)
		private String term;					//루틴의 기간 (주 단위)
		private String text;				//루틴의 설명
	
		public Routine() {
			super();
		}
		
		public Routine(String Routine_id, String Rname, String term) {
			this.Routine_id = Routine_id;
			this.Rname = Rname;
			this.term = term;
		}
		
		
		public String getRoutine_id() {
			return Routine_id;
		}
		public void setRoutine_id(String routine_id) {
			Routine_id = routine_id;
		}
		public String getRname() {
			return Rname;
		}
		public void setRname(String rname) {
			Rname = rname;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getterm() {
			return term;
		}
		public void setterm(String term) {
			this.term = term;
		}

		public String getText() {
			return text;
		}

		public void setText(String text) {
			this.text = text;
		}
	

}
