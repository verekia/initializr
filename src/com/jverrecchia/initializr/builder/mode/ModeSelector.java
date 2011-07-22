package com.jverrecchia.initializr.builder.mode;

public class ModeSelector { 

	static public Mode getMode(String param) {
		if (param != null && param.equals("boilerplate"))
			return new Boilerplate();
		if (param != null)
			return new Empty();
		return new Initializr();
	}

}
