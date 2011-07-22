package com.jverrecchia.initializr.builder.errors;

public class IncompatibleModuleException extends Exception {

    /**
     * 
     */
    private static final long serialVersionUID = 4450562722931055192L;
    private String msg;

    public IncompatibleModuleException(String firstModuleName, String secondModuleName) {
	this.setMsg("The module named \"" + firstModuleName + "\" is incompatible with the module named \"" + secondModuleName + "\"");
    }

    public void setMsg(String msg) {
	this.msg = msg;
    }

    public String getMsg() {
	return msg;
    }
}
