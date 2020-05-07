package com.test.jsp.dto;

public class BeanTest {
	private String name = "홍길동";

	public BeanTest() {
		
	}
	public BeanTest(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
