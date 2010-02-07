package
{
	public class EvonyConnectionSingleton
	{
		static private var instance:EvonyConnectionSingleton = null;

		private var connection:EvonyConnection;
		public function EvonyConnectionSingleton(username:String, password:String, server:String)
		{
			connection = new EvonyConnection(username, password, server);
		}

		public static function init(username:String, password:String, server:String):void {
			instance = new EvonyConnectionSingleton(username, password, server);
		}

		public static function getInstance():EvonyConnectionSingleton {
			return instance;
		}

		public function getConnection():EvonyConnection {
			return connection;
		}

	}
}