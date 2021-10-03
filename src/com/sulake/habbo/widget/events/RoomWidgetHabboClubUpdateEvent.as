package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_189:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2142:Boolean = false;
      
      private var var_2140:int = 0;
      
      private var var_2139:int = 0;
      
      private var var_2141:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_189,param5,param6);
         var_2141 = param1;
         var_2139 = param2;
         var_2140 = param3;
         var_2142 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2140;
      }
      
      public function get periodsLeft() : int
      {
         return var_2139;
      }
      
      public function get daysLeft() : int
      {
         return var_2141;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2142;
      }
   }
}
