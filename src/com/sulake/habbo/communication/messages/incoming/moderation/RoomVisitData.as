package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_618:String;
      
      private var var_1657:int;
      
      private var var_1551:Boolean;
      
      private var _roomId:int;
      
      private var var_1656:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1551 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_618 = param1.readString();
         var_1656 = param1.readInteger();
         var_1657 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1551;
      }
      
      public function get roomName() : String
      {
         return var_618;
      }
      
      public function get enterMinute() : int
      {
         return var_1657;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1656;
      }
   }
}
