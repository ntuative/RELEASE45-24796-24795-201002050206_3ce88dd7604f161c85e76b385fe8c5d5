package com.sulake.habbo.notifications
{
   public class HabboNotificationItem
   {
       
      
      private var var_72:HabboNotificationItemStyle;
      
      private var var_17:String;
      
      private var var_26:HabboNotifications;
      
      public function HabboNotificationItem(param1:String, param2:HabboNotificationItemStyle, param3:HabboNotifications)
      {
         super();
         var_17 = param1;
         var_72 = param2;
         var_26 = param3;
      }
      
      public function ExecuteUiLinks() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_72.componentLinks;
         for each(_loc2_ in _loc1_)
         {
            if(var_26 != null)
            {
               var_26.onExecuteLink(_loc2_);
            }
         }
      }
      
      public function get style() : HabboNotificationItemStyle
      {
         return var_72;
      }
      
      public function get content() : String
      {
         return var_17;
      }
   }
}
