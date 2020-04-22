package com.vshesh.wrappers;

import org.owasp.esapi.ESAPI;

public class EsapiWrapper {
	public static String esapiEncodeForCSS(String userInput) {
		return ESAPI.encoder().encodeForCSS(userInput);
	}
	
	public static String esapiEncodeForHTML(String userInput) {
		return ESAPI.encoder().encodeForHTML(userInput);
	}
	
	public static String esapiEncodeForHTMLAttribute(String userInput) {
		return ESAPI.encoder().encodeForHTMLAttribute(userInput);
	}
	
	public static String esapiEncodeForJavaScript(String userInput) {
		return ESAPI.encoder().encodeForJavaScript(userInput);
	}
}
