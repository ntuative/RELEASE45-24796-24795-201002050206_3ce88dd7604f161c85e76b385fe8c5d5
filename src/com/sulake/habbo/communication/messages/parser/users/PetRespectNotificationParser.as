package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1896:int;
      
      private var var_1180:PetData;
      
      private var var_1897:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1896;
      }
      
      public function get petData() : PetData
      {
         return var_1180;
      }
      
      public function flush() : Boolean
      {
         var_1180 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1897;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1896 = param1.readInteger();
         var_1897 = param1.readInteger();
         var_1180 = new PetData(param1);
         return true;
      }
   }
}
