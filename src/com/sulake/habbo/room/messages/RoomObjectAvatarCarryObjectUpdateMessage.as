package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_946:int;
      
      private var var_1161:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_946 = param1;
         var_1161 = param2;
      }
      
      public function get itemType() : int
      {
         return var_946;
      }
      
      public function get itemName() : String
      {
         return var_1161;
      }
   }
}
