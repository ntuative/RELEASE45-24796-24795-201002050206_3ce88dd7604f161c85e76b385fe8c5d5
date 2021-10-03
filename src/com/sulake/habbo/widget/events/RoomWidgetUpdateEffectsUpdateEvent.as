package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_554:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_237:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_554,param2,param3);
         var_237 = param1;
      }
      
      public function get effects() : Array
      {
         return var_237;
      }
   }
}
