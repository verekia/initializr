package com.jverrecchia.initializr.builder.errors;

public class ModuleNotFoundException extends Exception {

    private String msg;

    public ModuleNotFoundException(String name) {
	this.setMsg("The module named \"" + name + "\" doesn't exist :)");
    }

    public void setMsg(String msg) {
	this.msg = msg;
    }

    public String getMsg() {
	return msg;
    }
}
