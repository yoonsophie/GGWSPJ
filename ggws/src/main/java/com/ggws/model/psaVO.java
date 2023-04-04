package com.ggws.model;

public class psaVO {

		String user_ID;
		String userProfilePic;
		
	
		public psaVO(String user_ID, String userProfilePic) {
			super();
			this.user_ID = user_ID;
			this.userProfilePic = userProfilePic;
		}
		
		public psaVO(String user_ID) {
			this.user_ID = user_ID;
		}
		
		
		
		public String user_ID() {
			return user_ID;
		}
		public void user_ID(String user_ID) {
			this.user_ID = user_ID;
		}
		public String getPsa() {
			return userProfilePic;
		}
		public void setPsa(String userProfilePic) {
			this.userProfilePic = userProfilePic;
		}
		
		
		
}
