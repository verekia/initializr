package com.jverrecchia.initializr.builder.modules;

public class Insert { 
	private String mode;
	private String what;
	private String where;
	private String type;
	
	public void setWhat(String what) {
		this.what = what;
	}
	public String getWhat() {
		return what;
	}
	public void setWhere(String where) {
		this.where = where;
	}
	public String getWhere() {
		return where;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
}
