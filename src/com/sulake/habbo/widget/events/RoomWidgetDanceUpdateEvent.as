package com.sulake.habbo.widget.events
{
   public class RoomWidgetDanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_636:String = "RWUE_DANCE";
       
      
      private var var_72:int;
      
      public function RoomWidgetDanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_636,param2,param3);
         var_72 = param1;
      }
      
      public function get style() : int
      {
         return var_72;
      }
   }
}
