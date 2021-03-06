package objects.hazards;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxObject;

class HazardMovingBlock extends Hazard
{

	private var direction:Int = 0;
	private var MOVE_SPEED:Float = 0.5;
	private var horizontal:Bool;
	
		public function new(x:Float, y:Float, hor:Bool) 
	{
		super(x, y);
		loadGraphic(AssetPaths.hazards__png, true, 8, 8);
		animation.add("static", [1]);
		animation.play("static");
		centerOffsets();
		horizontal = hor;
	}
	
	override public function update(elapsed:Float):Void 
	{
		if (_appeared)
		   if (horizontal)
		   {
		       moveHorizontally();
		   }
		   else{
			   moveVertically();
		   }

		if (direction == 0)
			direction = FlxG.random.int( -1, 1);
			
		super.update(elapsed);
	}
	
	override private function collisions()
	{
		if (FlxG.collide(this, Reg.PS.map) || (FlxG.collide(this,Reg.PS.blocks)))
			direction *=-1;
		
		super.collisions();
	}
	
	public function moveVertically()
	{
		y += MOVE_SPEED * direction;
	}
	
	public function moveHorizontally()
	{
		x += MOVE_SPEED * direction;
	}
	
}