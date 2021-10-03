package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1866:int;
      
      private var var_362:Boolean;
      
      private var var_1865:Boolean;
      
      private var var_783:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1865 = param1.readBoolean();
         if(var_1865)
         {
            var_1866 = param1.readInteger();
            var_362 = param1.readBoolean();
         }
         else
         {
            var_783 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_783 != null)
         {
            var_783.dispose();
            var_783 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1866;
      }
      
      public function get owner() : Boolean
      {
         return var_362;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1865;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_783;
      }
   }
}
