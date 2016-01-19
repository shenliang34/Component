package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * @author shenliangliang
	 * @E-mail: 971935832@qq.com
	 * 创建时间：2015-11-25 下午7:12:52
	 * 
	 */
	public class Component extends Sprite
	{
		public function Component()
		{
//			trace(1231);
			var arr:Array = [{name:"我在"},{name:"我要"},{name:"我想你"},{name:"wr"},{name:"wa"},{name:"1121"},{name:"wz"},{name:"我想"}];
			var i:Object
			for each (i in arr) 
			{
				trace(i.name);
			}
//			var arr1:Array = SortByGB2312.sort(arr);
//			for each (i in arr1) 
//			{
				trace("------------------------------------------");
//			}
			var arr2:Array = SortonUtil.sortByChinese(arr,null,null,"name");
			for each (i in arr2) 
			{
				trace(i.name);
			}
			
			trace(SortonUtil.isChinese("1好"));
			contaner1 = new Sprite();
			addChild(contaner1);
			
			var bg:Sprite = createContaienr(0xff0000,1);
			contaner1.addChild(bg);
			bg.x = 100;
			bg.addEventListener(MouseEvent.CLICK,onClick);
			
			container2 = new Sprite();
			addChild(container2);
			container2.addChild(bg);
			bg.x = 200;
			container2.x = 100;
			bg.addEventListener(MouseEvent.CLICK,onClick2);
		}
		var container2:Sprite;
		var contaner1:Sprite;
		protected function onClick2(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			trace("clcik2");
			contaner1.addChild(container2.getChildAt(0));
		}
		
		protected function onClick(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			trace("click1");
		}
		
		private function createContaienr(color:uint,alpha:Number):Sprite
		{
			var container:Sprite = new Sprite();
			container.graphics.beginFill(color,alpha);
			container.graphics.drawRect(0,0,100,100);
			container.graphics.endFill();
			return container;
		}
	}
}