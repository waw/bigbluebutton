package org.bigbluebutton.clientcheck.model.test
{
	import org.osflash.signals.ISignal;
	import org.osflash.signals.Signal;

	public class JavaEnabledTest implements ITestable
	{
		public static var JAVA_ENABLED:String="Java Enabled";

		private var _testSuccessfull:Boolean;
		private var _testResult:String;

		private var _javaEnabledTestSuccessfullChangedSignal:ISignal=new Signal;

		public function get testSuccessfull():Boolean
		{
			return _testSuccessfull;
		}

		public function set testSuccessfull(value:Boolean):void
		{
			_testSuccessfull=value;
			javaEnabledTestSuccessfullChangedSignal.dispatch();
		}

		public function get testResult():String
		{
			return _testResult;
		}

		public function set testResult(value:String):void
		{
			_testResult=value;
		}

		public function get javaEnabledTestSuccessfullChangedSignal():ISignal
		{
			return _javaEnabledTestSuccessfullChangedSignal;
		}
	}
}
