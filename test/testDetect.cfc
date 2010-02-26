component extends="mxunit.framework.TestCase"{
	
	public void function setup(){
    	variables.translator = New GoogleTranslationAPI.cfc.translator();	
    	
    }
    
	public void function testDetectEnglish(){
    	var String = "I eat France!";
		var Code = "en";
		
		var result = variables.translator.detect(String);
		AssertEquals(code, result.language);
	
		
    }
	
	public void function testDetectFrench(){
		var String = "Je mange la France!";
		var Code = "fr";
		
		var result = variables.translator.detect(String);
		AssertEquals(code, result.language);
	
		
    }
    

}
  

