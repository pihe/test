package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);

			stage.scaleMode = StageScaleMode.NO_SCALE
			stage.align = StageAlign.TOP_LEFT
			
			var tf:TextField = new TextField()
			addChild(tf)
			tf.x = tf.y = 10
			tf.autoSize = 'left'
			
			tf.defaultTextFormat = new TextFormat('Arial', 14, 0, true)
			tf.text = 'hello'
		}
		
	}
	
}