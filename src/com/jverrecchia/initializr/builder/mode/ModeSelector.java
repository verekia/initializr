package com.jverrecchia.initializr.builder.mode;

public class ModeSelector { 

	static public Mode getMode(String param) {
		if (param != null && param.equals("h5bp"))
			return new Boilerplate();

		if (param != null && param.equals("less"))
			return new Less();

		return new Css();
	}

}
