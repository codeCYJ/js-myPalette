package com.tjoeun.spring.beans;

import java.sql.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserDTO {
  private int user_idx;
  
  @Size(min=2, max=4)
  @Pattern(regexp="[가-힣]*")
  private String user_name;
  
  @Size(min=4, max=20)
  @Pattern(regexp="[a-zA-Z0-9]*")
  private String user_id;
  
  @Size(min=4, max=20)
  @Pattern(regexp="[a-zA-Z0-9]*")
  private String user_pw;
  
  @Size(min=4, max=20)
  @Pattern(regexp="[a-zA-Z0-9]*")
  private String user_pw2;
  
  
  private boolean checkId;
  private boolean logLogin;
  
  private String user_addr;
  private Date user_birth;
  
  public int getUser_idx() {
    return user_idx;
  }
  public void setUser_idx(int user_idx) {
    this.user_idx = user_idx;
  }
  public String getUser_name() {
    return user_name;
  }
  public void setUser_name(String user_name) {
    this.user_name = user_name;
  }
  public String getUser_id() {
    return user_id;
  }
  public void setUser_id(String user_id) {
    this.user_id = user_id;
  }
  public String getUser_pw() {
    return user_pw;
  }
  public void setUser_pw(String user_pw) {
    this.user_pw = user_pw;
  }
  public String getUser_pw2() {
    return user_pw2;
  }
  public void setUser_pw2(String user_pw2) {
    this.user_pw2 = user_pw2;
  }
  public boolean isCheckId() {
    return checkId;
  }
  public void setCheckId(boolean checkId) {
    this.checkId = checkId;
  }
  public boolean isLogLogin() {
    return logLogin;
  }
  public void setLogLogin(boolean logLogin) {
    this.logLogin = logLogin;
  }
  
  
  
  public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	
	public Date getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}
	@Override
  public String toString() {

  	return"MemberDTO [user_idx="+user_idx+",user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="+user_name+", user_addr="+user_addr+", user_birth="+user_birth+"]";
  }
  
  
}
