package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_140:Array;
      
      private var var_29:Boolean = false;
      
      private var var_1474:int = 0;
      
      private var var_1473:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_462:Map;
      
      private var var_1978:int = 0;
      
      private var var_1472:int = 0;
      
      private var var_160:IHabboConfigurationManager;
      
      private var var_1222:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1471:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_29)
         {
            return;
         }
         if(getTimer() - var_1474 > var_1473)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1474 = getTimer();
         var_462.add(var_1222,var_1474);
         _connection.send(new LatencyPingRequestMessageComposer(var_1222));
         ++var_1222;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_160 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1473 = int(var_160.getKey("latencytest.interval"));
         var_1471 = int(var_160.getKey("latencytest.report.index"));
         var_1978 = int(var_160.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1473 < 1)
         {
            return;
         }
         var_462 = new Map();
         var_140 = new Array();
         var_29 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_462 == null || var_140 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_462.getValue(_loc2_.requestId);
         var_462.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_140.push(_loc4_);
         if(var_140.length == var_1471 && var_1471 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_140.length)
            {
               _loc5_ += var_140[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_140.length)
            {
               if(var_140[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_140[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_140 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1472) > var_1978 || var_1472 == 0)
            {
               var_1472 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_140.length);
               _connection.send(_loc11_);
            }
            var_140 = [];
         }
      }
      
      public function dispose() : void
      {
         var_29 = false;
         var_160 = null;
         _communication = null;
         _connection = null;
         if(var_462 != null)
         {
            var_462.dispose();
            var_462 = null;
         }
         var_140 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_160 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
