package flash.display; #if (!display && flash)


@:final extern class JPEGEncoderOptions {
	
	
	public var quality:UInt;
	
	
	public function new (quality:UInt = 80);
	
	
}


#else
typedef JPEGEncoderOptions = openfl.display.JPEGEncoderOptions;
#end