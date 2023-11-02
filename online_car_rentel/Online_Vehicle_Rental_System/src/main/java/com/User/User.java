package com.User;

public class User {
	
	private int userid;
	private String email;
	private String password;
	private String Name;
	private String DOB;
	private String Gender;
	private String Country;
	
	
	
	
        public User(int userid, String name, String email, String password, String DOB, String Gender, String Country) {
		super();
		this.userid = userid;
		this.email = email;
		this.password = password;
		this.Name = name;
		this.DOB = DOB;
		this.Gender = Gender;
		this.Country = Country;

	}



		public int getUserid() {
			return userid;
		}



		public void setUserid(int userid) {
			this.userid = userid;
		}



		public String getEmail() {
			return email;
		}



		public void setEmail(String email) {
			this.email = email;
		}



		public String getPassword() {
			return password;
		}

		public String getDOB() {
			return DOB;
		}

		public String getGender(){
			return Gender;
		}

		public String getCountry(){
			return Country;
		}

		public void setDOB(String dOB) {
			DOB = dOB;
		}



		public void setPassword(String password) {
			this.password = password;
		}



		public String getName() {
			return Name;
		}



		public void setName(String name) {
			Name = name;
		}

		public void setGender(String gender){
			Gender = gender;
		}

		public void setCountry(String country){
			Country = country;
		}        

	
}


