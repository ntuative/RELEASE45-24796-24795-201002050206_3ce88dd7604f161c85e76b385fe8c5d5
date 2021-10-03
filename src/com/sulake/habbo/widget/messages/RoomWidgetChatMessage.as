package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_103:int = 0;
      
      public static const const_100:int = 1;
      
      public static const const_84:int = 2;
      
      public static const const_547:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1254:int = 0;
      
      private var var_1741:String = "";
      
      private var var_185:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_185 = param2;
         var_1254 = param3;
         var_1741 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1741;
      }
      
      public function get chatType() : int
      {
         return var_1254;
      }
      
      public function get text() : String
      {
         return var_185;
      }
   }
}
