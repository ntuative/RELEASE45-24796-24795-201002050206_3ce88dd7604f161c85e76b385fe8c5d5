package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_396:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_527:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_654:String;
      
      private var var_141:int;
      
      private var var_185:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_141 = param2;
         var_185 = param3;
         var_654 = param4;
      }
      
      public function get objectId() : int
      {
         return var_141;
      }
      
      public function get text() : String
      {
         return var_185;
      }
      
      public function get colorHex() : String
      {
         return var_654;
      }
   }
}
