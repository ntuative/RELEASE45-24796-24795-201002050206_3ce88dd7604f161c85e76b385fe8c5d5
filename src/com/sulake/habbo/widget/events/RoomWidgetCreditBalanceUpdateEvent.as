package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditBalanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_138:String = "RWCBUE_CREDIT_BALANCE";
       
      
      private var var_1850:int;
      
      public function RoomWidgetCreditBalanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_138,param2,param3);
         var_1850 = param1;
      }
      
      public function get balance() : int
      {
         return var_1850;
      }
   }
}
