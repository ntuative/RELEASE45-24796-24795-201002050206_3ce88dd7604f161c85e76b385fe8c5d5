package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_517:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1587:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_517);
         var_1587 = param1;
      }
      
      public function get tag() : String
      {
         return var_1587;
      }
   }
}
