package com.jverrecchia.initializr.test.mode;

import junit.framework.TestCase;

import com.jverrecchia.initializr.builder.mode.Boilerplate;
import com.jverrecchia.initializr.builder.mode.Custom;
import com.jverrecchia.initializr.builder.mode.Initializr;
import com.jverrecchia.initializr.builder.mode.ModeSelector;

public class ModeTest extends TestCase {

    public void testModeBoilerplate() {
	assert (ModeSelector.getMode("boilerplate").getClass()
		.equals(Boilerplate.class));
    }

    public void testModeEmpty() {
	assert (ModeSelector.getMode("empty").getClass()
		.equals(Custom.class));
    }    
    
    public void testModeBlabla() {
	assert (ModeSelector.getMode("blabla").getClass()
		.equals(Custom.class));
    }

    public void testModeInitializrNull() {
	assert (ModeSelector.getMode(null).getClass().equals(Initializr.class));
    }
}
