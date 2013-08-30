package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class Extension {

	public static function sampleMethod (inputValue:Int):Int {

		return extension_sample_method(inputValue);

	}
	private static var extension_sample_method = Lib.load ("extension", "extension_sample_method", 1);


	public static function initTextfield (text:String):Void {

		extension_init_textfield(text);

	}
	private static var extension_init_textfield = Lib.load ("extension", "extension_init_textfield", 1);

}
