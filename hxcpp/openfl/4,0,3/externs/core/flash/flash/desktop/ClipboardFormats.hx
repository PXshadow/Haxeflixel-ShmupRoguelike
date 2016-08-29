package flash.desktop; #if (!display && flash)


@:enum abstract ClipboardFormats(String) from String to String {
	
	public var HTML_FORMAT = "air:html";
	public var RICH_TEXT_FORMAT = "air:rtf";
	public var TEXT_FORMAT = "air:text";
	
}


#else
typedef ClipboardFormats = openfl.desktop.ClipboardFormats;
#end