package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_482:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_185:String;
      
      private var var_654:String;
      
      private var var_1456:String;
      
      private var var_141:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_141 = param2;
         var_1456 = param3;
         var_185 = param4;
         var_654 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1456;
      }
      
      public function get colorHex() : String
      {
         return var_654;
      }
      
      public function get text() : String
      {
         return var_185;
      }
      
      public function get objectId() : int
      {
         return var_141;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
