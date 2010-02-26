/**
* Google language lables and language codes. 
*/
component 
{

	public languagecodes function init(){
		variables.codes = {
			AFRIKAANS = 'af',
			ALBANIAN = 'sq',
			AMHARIC = 'am',
			ARABIC = 'ar',
			ARMENIAN = 'hy',
			AZERBAIJANI = 'az',
			BASQUE = 'eu',
			BELARUSIAN = 'be',
			BENGALI = 'bn',
			BIHARI = 'bh',
			BULGARIAN = 'bg',
			BURMESE = 'my',
			CATALAN = 'ca',
			CHEROKEE = 'chr',
			CHINESE = 'zh',
			CHINESE_SIMPLIFIED = 'zh-CN',
			CHINESE_TRADITIONAL = 'zh-TW',
			CROATIAN = 'hr',
			CZECH = 'cs',
			DANISH = 'da',
			DHIVEHI = 'dv',
			DUTCH = 'nl',  
			ENGLISH = 'en',
			ESPERANTO = 'eo',
			ESTONIAN = 'et',
			FILIPINO = 'tl',
			FINNISH = 'fi',
			FRENCH = 'fr',
			GALICIAN = 'gl',
			GEORGIAN = 'ka',
			GERMAN = 'de',
			GREEK = 'el',
			GUARANI = 'gn',
			GUJARATI = 'gu',
			HEBREW = 'iw',
			HINDI = 'hi',
			HUNGARIAN = 'hu',
			ICELANDIC = 'is',
			INDONESIAN = 'id',
			INUKTITUT = 'iu',
			IRISH = 'ga',
			ITALIAN = 'it',
			JAPANESE = 'ja',
			KANNADA = 'kn',
			KAZAKH = 'kk',
			KHMER = 'km',
			KOREAN = 'ko',
			KURDISH = 'ku',
			KYRGYZ = 'ky',
			LAOTHIAN = 'lo',
			LATVIAN = 'lv',
			LITHUANIAN = 'lt',
			MACEDONIAN = 'mk',
			MALAY = 'ms',
			MALAYALAM = 'ml',
			MALTESE = 'mt',
			MARATHI = 'mr',
			MONGOLIAN = 'mn',
			NEPALI = 'ne',
			NORWEGIAN = 'no',
			ORIYA = 'or',
			PASHTO = 'ps',
			PERSIAN = 'fa',
			POLISH = 'pl',
			PORTUGUESE = 'pt-PT',
			PUNJABI = 'pa',
			ROMANIAN = 'ro',
			RUSSIAN = 'ru',
			SANSKRIT = 'sa',
			SERBIAN = 'sr',
			SINDHI = 'sd',
			SINHALESE = 'si',
			SLOVAK = 'sk',
			SLOVENIAN = 'sl',
			SPANISH = 'es',
			SWAHILI = 'sw',
			SWEDISH = 'sv',
			TAJIK = 'tg',
			TAMIL = 'ta',
			TAGALOG = 'tl',
			TELUGU = 'te',
			THAI = 'th',
			TIBETAN = 'bo',
			TURKISH = 'tr',
			UKRAINIAN = 'uk',
			URDU = 'ur',
			UZBEK = 'uz',
			UIGHUR = 'ug',
			VIETNAMESE = 'vi',
			WELSH = 'cy',
			YIDDISH = 'yi',
			UNKNOWN = ''};	
		
		
		return This;
	}

	/**
	* Gets the Google Language API code for the input language.
	* @language The language for which to retrieve the API code.
	*/
	public string function getCode(required string language){
		return variables.codes[arguments.language];
	}
	
	/**
	* Gets the Google Language API Langauge for the input code.
	* @code The code for which to retrieve the API language.
	*/
	public any function getLanguage(required string code){
		return structFindValue("#variables.codes#",arguments.code)[1].key;
	}  


}