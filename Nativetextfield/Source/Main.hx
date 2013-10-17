package;

import flash.Lib;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.events.MouseEvent;

class Main extends Sprite {

	private var _btn:Sprite;
	
	public function new () {
		
		super ();
		
		init();
	}

	private function init():Void {

		_btn = new Sprite();
		_btn.graphics.beginFill(0x00393B, 1);
		_btn.graphics.drawRoundRect(0, 0, 100, 36, 12, 12);
		_btn.graphics.endFill();
		_btn.x = _btn.y = 10;
		addChild(_btn);

		var format:TextFormat = new TextFormat();
		format.font = "Arial";
		format.color = 0x44A18E;
		format.size = 16;

		var tf:TextField = new TextField();
		tf.defaultTextFormat = format;
		tf.text = "click me";
		tf.x = (100-tf.textWidth)*.5;
		tf.y = (36-tf.textHeight)*.5;
		_btn.addChild(tf);

		_btn.addEventListener(MouseEvent.CLICK, show);

	}
	
	private function show(e:MouseEvent):Void {

		trace("show:"+Extension.sampleMethod(777));
		Lib.pause();
		Extension.initTextfield("お元気ですか 你好 hello");

	}
}
