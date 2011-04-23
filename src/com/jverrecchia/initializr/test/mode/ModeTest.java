package com.jverrecchia.initializr.test.mode;

import junit.framework.TestCase;

import com.jverrecchia.initializr.builder.mode.Boilerplate;
import com.jverrecchia.initializr.builder.mode.ModeSelector;
import com.jverrecchia.initializr.builder.mode.Standard;

public class ModeTest extends TestCase{
	
	public void testModeBoilerplate(){
		assert(ModeSelector.getMode("boilerplate").getClass().equals(Boilerplate.class));
	}
	public void testModeStandard(){
		assert(ModeSelector.getMode("someText").getClass().equals(Standard.class));
	}
	public void testModeStandardNull(){
		assert(ModeSelector.getMode(null).getClass().equals(Standard.class));			
	}
}
