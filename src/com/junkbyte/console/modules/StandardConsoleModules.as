package com.junkbyte.console.modules
{
	import com.junkbyte.console.Cc;
	import com.junkbyte.console.Console;
	import com.junkbyte.console.modules.displayRoller.DisplayRoller;
	import com.junkbyte.console.modules.keyStates.KeyStates;
	import com.junkbyte.console.modules.ruler.RulerModule;
	import com.junkbyte.console.modules.unCaughtErrorsListenerModule.UnCaughtErrorsListenerModule;
	import com.junkbyte.console.modules.userdata.UserData;

	public class StandardConsoleModules
	{
		public static function registerToConsole(console:Console = null):void
		{
			if(console == null)
			{
				console = Cc;
			}
			if(console == null)
			{
				return;
			}
			
			//console.modules.registerModule(new LocalRemoting());
			
			console.modules.registerModule(new UserData());
			console.modules.registerModule(new KeyStates());
			console.modules.registerModule(new RulerModule());
			console.modules.registerModule(new DisplayRoller());
			console.modules.registerModule(new UnCaughtErrorsListenerModule());
		}
	}
}