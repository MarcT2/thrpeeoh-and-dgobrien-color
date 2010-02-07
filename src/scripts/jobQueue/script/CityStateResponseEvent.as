package scripts.jobQueue.script
{
	import flash.events.Event;

		public class CityStateResponseEvent extends Event
	{
		public var message:String;
		public var response:Object;

		public static const TYPE:String = "CityStateResponseEvent";

		public function CityStateResponseEvent(response:Object, message:String = "")
		{
			super(TYPE);
			this.message = message;
			this.response = response;
		}
	}
}