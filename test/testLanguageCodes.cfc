component extends="mxunit.framework.TestCase"{
	
	public void function setup(){
    	variables.languageCodes = New GoogleTranslationAPI.cfc.languageCodes();	
    	
    }
    
	public void function testCodeToLanguage(){
    	var code = "en";
		var	language = "ENGLISH";
		
		var result = variables.languageCodes.getLanguage(code);
		AssertEquals(language, result);
	
		
    }
	
	public void function testLanguageToCode(){
    	var code = "en";
		var	language = "ENGLISH";
		
		var result = variables.languageCodes.getCode(language);
		AssertEquals(code, result);
	
		
    }
    

}
  

