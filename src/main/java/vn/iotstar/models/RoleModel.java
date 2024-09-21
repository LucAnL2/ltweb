package vn.iotstar.models;

import java.io.Serializable;

public class RoleModel implements Serializable{

	private static final long serialVersionUID = -7682690701597477524L;
	
	private String roleid;
	private String rolename;
	public RoleModel() {
		super();
	}
	public String getRoleid() {
		return roleid;
	}
	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	@Override
	public String toString() {
		return "RoleModel [roleid=" + roleid + ", rolename=" + rolename + "]";
	}

}
