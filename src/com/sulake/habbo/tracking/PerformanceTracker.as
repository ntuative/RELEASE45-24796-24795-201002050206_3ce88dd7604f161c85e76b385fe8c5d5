package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1455:GarbageMonitor = null;
      
      private var var_1096:int = 0;
      
      private var var_1183:Boolean = false;
      
      private var var_1908:String = "";
      
      private var var_1454:String = "";
      
      private var var_322:Number = 0;
      
      private var var_1202:int = 10;
      
      private var var_2280:Array;
      
      private var var_594:int = 0;
      
      private var var_1205:int = 60;
      
      private var var_973:int = 0;
      
      private var var_972:int = 0;
      
      private var var_1910:String = "";
      
      private var var_1954:Number = 0;
      
      private var var_1203:int = 1000;
      
      private var var_1953:Boolean = true;
      
      private var var_1952:Number = 0.15;
      
      private var var_160:IHabboConfigurationManager = null;
      
      private var var_1906:String = "";
      
      private var var_1204:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2280 = [];
         super();
         var_1454 = Capabilities.version;
         var_1908 = Capabilities.os;
         var_1183 = Capabilities.isDebugger;
         var_1906 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1455 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1096 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1455.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1455.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_322;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1205 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1454;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_972;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1203)
         {
            ++var_973;
            _loc3_ = true;
         }
         else
         {
            ++var_594;
            if(var_594 <= 1)
            {
               var_322 = param1;
            }
            else
            {
               _loc4_ = Number(var_594);
               var_322 = var_322 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1096 > var_1205 * 1000 && var_1204 < var_1202)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_322);
            _loc5_ = true;
            if(var_1953 && var_1204 > 0)
            {
               _loc6_ = differenceInPercents(var_1954,var_322);
               if(_loc6_ < var_1952)
               {
                  _loc5_ = false;
               }
            }
            var_1096 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1954 = var_322;
               if(sendReport())
               {
                  ++var_1204;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1202 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1203 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1906,var_1454,var_1908,var_1910,var_1183,_loc4_,_loc3_,var_972,var_322,var_973);
            _connection.send(_loc1_);
            var_972 = 0;
            var_322 = 0;
            var_594 = 0;
            var_973 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_160 = param1;
         var_1205 = int(var_160.getKey("performancetest.interval","60"));
         var_1203 = int(var_160.getKey("performancetest.slowupdatelimit","1000"));
         var_1202 = int(var_160.getKey("performancetest.reportlimit","10"));
         var_1952 = Number(var_160.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1953 = Boolean(int(var_160.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
