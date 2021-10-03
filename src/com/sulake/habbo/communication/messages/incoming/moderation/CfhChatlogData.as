package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_961:int;
      
      private var var_1964:int;
      
      private var var_1458:int;
      
      private var var_102:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1458 = param1.readInteger();
         var_1964 = param1.readInteger();
         var_961 = param1.readInteger();
         var_102 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1458);
      }
      
      public function get reportedUserId() : int
      {
         return var_961;
      }
      
      public function get callerUserId() : int
      {
         return var_1964;
      }
      
      public function get callId() : int
      {
         return var_1458;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_102;
      }
   }
}
