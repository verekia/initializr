package com.jverrecchia.initializr.builder.modules;

import java.util.List;

public class Module implements Comparable<Module>{ 
	private String name;
	private String id;
	private String author;
	private String url;
	private List<Module> requires;
	private List<Insert> inserts;
	private List<String> incompatibilities;
	// private List<insertion> (before after...)
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<Module> getRequires() {
		return requires;
	}
	public void setRequires(List<Module> requires) {
		this.requires = requires;
	}
	public void setInserts(List<Insert> inserts) {
		this.inserts = inserts;
	}
	public List<Insert> getInserts() {
		return inserts;
	}
	public void setIncompatibilities(List<String> incompatibilities) {
	    this.incompatibilities = incompatibilities;
	}
	public List<String> getIncompatibilities() {
	    return incompatibilities;
	}
	
	@Override
	public int compareTo(Module o) {
	    int alphaCompare = this.getId().compareTo(o.getId());
	    return alphaCompare;
	}
	
	
}
