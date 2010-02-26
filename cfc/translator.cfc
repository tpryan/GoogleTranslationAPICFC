/**
* Google Language detection and translation tools. 
*/
component{

	public translator function init(){
		variables.apiUrl = "http://ajax.googleapis.com/ajax/services/language/";
		variables.v="1.0";
		return This;
	}

	/**
	* Translates a string from one language to another. 
	* @q The source string to translate
	* @from The language of the source.
	* @to The languge we want to translate the string to
	*/
	public string function translate(required string q, required string from, required string to){
		var httpObj = New http();
		httpObj.setUrl(variables.apiUrl & "translate");
		httpObj.addParam(name='v',type='url',value=variables.v);
		httpObj.addParam(name='q',type='url',value=arguments.q);
		httpObj.addParam(name='langpair',type='url',value=arguments.from & "|" & arguments.to);
		var result = httpObj.send();
		var trans = deserializeJSON(result.getPrefix().fileContent).responseData.translatedText;
		return trans;
	}
	
	/**
	* Detects what language the selected text is written. Returns a struct with language, confidence, and isReliable
	* @q The string to detect language against.
	*/
	public struct function detect(required string q){
		var httpObj = New http();
		httpObj.setUrl(variables.apiUrl & "detect");
		httpObj.addParam(name='v',type='url',value=variables.v);
		httpObj.addParam(name='q',type='url',value=arguments.q);
		var result = httpObj.send();
		var trans = deserializeJSON(result.getPrefix().fileContent).responseData;
		return trans;
	}

}