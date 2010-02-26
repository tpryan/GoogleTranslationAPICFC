component extends="mxunit.framework.TestCase"{
	
	public void function setup(){
    	variables.translator = New GoogleTranslationAPI.cfc.translator();	
    	
    }
    
	public void function testTranslateEnglishToFrench(){
    	var fromString = "I eat France!";
		var toString = "Je mange la France!";
		var toCode = "fr";
		var fromCode = "en";
		
		var translation = variables.translator.translate(fromString,fromCode,toCode);
		AssertEquals(toString, translation);
	
		
    }
    

}
  

